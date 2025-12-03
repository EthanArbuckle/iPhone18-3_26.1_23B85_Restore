@interface ASStartNavigation
- (ASStartNavigation)startNavigationWithCompletion:(id)completion;
@end

@implementation ASStartNavigation

- (ASStartNavigation)startNavigationWithCompletion:(id)completion
{
  completionCopy = completion;
  destination = [(ASStartNavigation *)self destination];
  mapItem = [destination mapItem];

  origin = [(ASStartNavigation *)self origin];
  mapItem2 = [origin mapItem];

  directionsType = [(ASStartNavigation *)self directionsType];
  if ([directionsType isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
  {
    v10 = &MKLaunchOptionsDirectionsModeWalking;
  }

  else
  {
    v11 = [directionsType isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue];
    v12 = MKLaunchOptionsDirectionsModeTransit;
    if (v11)
    {
      goto LABEL_9;
    }

    if (![directionsType isEqualToString:MKLaunchOptionsDirectionsModeTransit])
    {
      v13 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "__MKDirectionsModeForString";
        v27 = 2112;
        v28 = directionsType;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s Unsupported directions type %@, defaulting to driving", buf, 0x16u);
      }
    }

    v10 = &MKLaunchOptionsDirectionsModeDriving;
  }

  v12 = *v10;
LABEL_9:
  v14 = v12;

  if (!mapItem)
  {
    v15 = [NSString stringWithFormat:@"Invalid ace command %@, no destination", self];
    v18 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_7284(v15, v18);
      if (!completionCopy)
      {
        goto LABEL_18;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_18;
    }

    v17 = [[SACommandFailed alloc] initWithReason:v15];
    goto LABEL_17;
  }

  if (!mapItem2)
  {
    mapItem2 = +[MKMapItem mapItemForCurrentLocation];
  }

  v24[0] = mapItem2;
  v24[1] = mapItem;
  v15 = [NSArray arrayWithObjects:v24 count:2];
  v22 = MKLaunchOptionsDirectionsModeKey;
  v23 = v14;
  v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [MKMapItem openMapsWithItems:v15 launchOptions:v16];

  if (completionCopy)
  {
    v17 = objc_alloc_init(SACommandSucceeded);
LABEL_17:
    v19 = v17;
    dictionary = [v17 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

LABEL_18:

  return result;
}

@end