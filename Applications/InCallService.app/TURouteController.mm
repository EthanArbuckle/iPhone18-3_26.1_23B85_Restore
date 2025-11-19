@interface TURouteController
+ (unint64_t)priorityForRoute:(id)a3;
- (BOOL)areNonRelayAuxiliaryRoutesAvailable;
- (BOOL)hasAirPodsAvailable;
- (BOOL)hasAirPodsInEar;
- (NSArray)sortedRoutes;
- (TURoute)routeForSpeakerDisable;
- (UIImage)audioRouteGlyph;
- (void)fetchAudioControlsGlyphWithCompletion:(id)a3;
@end

@implementation TURouteController

- (BOOL)areNonRelayAuxiliaryRoutesAvailable
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TURouteController *)self routes];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 supportsRelay] & 1) == 0 && (objc_msgSend(v6, "isAuxiliary"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(TURouteController *)self routes];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (([v6 isReceiver] & 1) != 0 || objc_msgSend(v6, "isDefaultRoute") && (objc_msgSend(v6, "isSpeaker") & 1) == 0)
        {
          v3 = v6;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

+ (unint64_t)priorityForRoute:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceType];
  v5 = 6;
  if (v4 <= 0x27)
  {
    if (((1 << v4) & 0xD4273F003ELL) != 0)
    {
LABEL_3:
      v5 = 2;
      goto LABEL_10;
    }

    if (((1 << v4) & 0x2298C0FFC0) != 0)
    {
      if ([v3 isGuest])
      {
        v5 = 5;
      }

      else
      {
        v5 = 4;
      }

      if ([v3 isRecommended])
      {
        v5 = 3;
      }
    }

    else
    {
      if (v4)
      {
        goto LABEL_10;
      }

      if ([v3 isSpeaker] & 1) != 0 || (objc_msgSend(v3, "isReceiver") & 1) != 0 || (objc_msgSend(v3, "isDefaultRoute"))
      {
        v5 = 1;
        goto LABEL_10;
      }

      if ([v3 isWiredHeadset] & 1) != 0 || (objc_msgSend(v3, "isWiredHeadphones") & 1) != 0 || (objc_msgSend(v3, "isWirelessHeadset"))
      {
        goto LABEL_3;
      }

      if ([v3 isRecommended])
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
  v3 = [(TURouteController *)self routes];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AEB1C;
  v6[3] = &unk_100358928;
  v6[4] = self;
  v4 = [v3 sortedArrayUsingComparator:v6];

  return v4;
}

- (BOOL)hasAirPodsAvailable
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(TURouteController *)self routes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isAirPodsRoute])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(TURouteController *)self pickedRoute];
  if ([v2 isAirPodsRoute])
  {
    v3 = [v2 isPreferredAndActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)audioRouteGlyph
{
  if ([(TURouteController *)self areAuxiliaryRoutesAvailable])
  {
    v3 = [(TURouteController *)self pickedRoute];
    v4 = [v3 audioRouteGlyphForDisplayStyle:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fetchAudioControlsGlyphWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TURouteController *)self pickedRoute];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AEE38;
  v7[3] = &unk_100358950;
  v8 = v4;
  v6 = v4;
  [v5 fetchAudioControlsGlyphWithCompletion:v7];
}

@end