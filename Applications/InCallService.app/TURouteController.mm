@interface TURouteController
+ (unint64_t)priorityForRoute:(id)route;
- (BOOL)areNonRelayAuxiliaryRoutesAvailable;
- (BOOL)hasAirPodsAvailable;
- (BOOL)hasAirPodsInEar;
- (NSArray)sortedRoutes;
- (TURoute)routeForSpeakerDisable;
- (UIImage)audioRouteGlyph;
- (void)fetchAudioControlsGlyphWithCompletion:(id)completion;
@end

@implementation TURouteController

- (BOOL)areNonRelayAuxiliaryRoutesAvailable
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  routes = [(TURouteController *)self routes];
  v3 = [routes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(routes);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 supportsRelay] & 1) == 0 && (objc_msgSend(v6, "isAuxiliary"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [routes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (TURoute)routeForSpeakerDisable
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  routes = [(TURouteController *)self routes];
  v3 = [routes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(routes);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (([v6 isReceiver] & 1) != 0 || objc_msgSend(v6, "isDefaultRoute") && (objc_msgSend(v6, "isSpeaker") & 1) == 0)
        {
          v3 = v6;
          goto LABEL_13;
        }
      }

      v3 = [routes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

+ (unint64_t)priorityForRoute:(id)route
{
  routeCopy = route;
  deviceType = [routeCopy deviceType];
  v5 = 6;
  if (deviceType <= 0x27)
  {
    if (((1 << deviceType) & 0xD4273F003ELL) != 0)
    {
LABEL_3:
      v5 = 2;
      goto LABEL_10;
    }

    if (((1 << deviceType) & 0x2298C0FFC0) != 0)
    {
      if ([routeCopy isGuest])
      {
        v5 = 5;
      }

      else
      {
        v5 = 4;
      }

      if ([routeCopy isRecommended])
      {
        v5 = 3;
      }
    }

    else
    {
      if (deviceType)
      {
        goto LABEL_10;
      }

      if ([routeCopy isSpeaker] & 1) != 0 || (objc_msgSend(routeCopy, "isReceiver") & 1) != 0 || (objc_msgSend(routeCopy, "isDefaultRoute"))
      {
        v5 = 1;
        goto LABEL_10;
      }

      if ([routeCopy isWiredHeadset] & 1) != 0 || (objc_msgSend(routeCopy, "isWiredHeadphones") & 1) != 0 || (objc_msgSend(routeCopy, "isWirelessHeadset"))
      {
        goto LABEL_3;
      }

      if ([routeCopy isRecommended])
      {
        v5 = 3;
      }

      else
      {
        v5 = 6;
      }
    }
  }

LABEL_10:

  return v5;
}

- (NSArray)sortedRoutes
{
  routes = [(TURouteController *)self routes];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AEB1C;
  v6[3] = &unk_100358928;
  v6[4] = self;
  v4 = [routes sortedArrayUsingComparator:v6];

  return v4;
}

- (BOOL)hasAirPodsAvailable
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  routes = [(TURouteController *)self routes];
  v3 = [routes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(routes);
        }

        if ([*(*(&v7 + 1) + 8 * i) isAirPodsRoute])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [routes countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasAirPodsInEar
{
  pickedRoute = [(TURouteController *)self pickedRoute];
  if ([pickedRoute isAirPodsRoute])
  {
    isPreferredAndActive = [pickedRoute isPreferredAndActive];
  }

  else
  {
    isPreferredAndActive = 0;
  }

  return isPreferredAndActive;
}

- (UIImage)audioRouteGlyph
{
  if ([(TURouteController *)self areAuxiliaryRoutesAvailable])
  {
    pickedRoute = [(TURouteController *)self pickedRoute];
    v4 = [pickedRoute audioRouteGlyphForDisplayStyle:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fetchAudioControlsGlyphWithCompletion:(id)completion
{
  completionCopy = completion;
  pickedRoute = [(TURouteController *)self pickedRoute];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AEE38;
  v7[3] = &unk_100358950;
  v8 = completionCopy;
  v6 = completionCopy;
  [pickedRoute fetchAudioControlsGlyphWithCompletion:v7];
}

@end