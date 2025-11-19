@interface ASStartNavigation
- (ASStartNavigation)startNavigationWithCompletion:(id)a3;
@end

@implementation ASStartNavigation

- (ASStartNavigation)startNavigationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ASStartNavigation *)self destination];
  v6 = [v5 mapItem];

  v7 = [(ASStartNavigation *)self origin];
  v8 = [v7 mapItem];

  v9 = [(ASStartNavigation *)self directionsType];
  if ([v9 isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
  {
    v10 = &MKLaunchOptionsDirectionsModeWalking;
  }

  else
  {
    v11 = [v9 isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue];
    v12 = MKLaunchOptionsDirectionsModeTransit;
    if (v11)
    {
      goto LABEL_9;
    }

    if (![v9 isEqualToString:MKLaunchOptionsDirectionsModeTransit])
    {
      v13 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "__MKDirectionsModeForString";
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s Unsupported directions type %@, defaulting to driving", buf, 0x16u);
      }
    }

    v10 = &MKLaunchOptionsDirectionsModeDriving;
  }

  v12 = *v10;
LABEL_9:
  v14 = v12;

  if (!v6)
  {
    v15 = [NSString stringWithFormat:@"Invalid ace command %@, no destination", self];
    v18 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_7284(v15, v18);
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    else if (!v4)
    {
      goto LABEL_18;
    }

    v17 = [[SACommandFailed alloc] initWithReason:v15];
    goto LABEL_17;
  }

  if (!v8)
  {
    v8 = +[MKMapItem mapItemForCurrentLocation];
  }

  v24[0] = v8;
  v24[1] = v6;
  v15 = [NSArray arrayWithObjects:v24 count:2];
  v22 = MKLaunchOptionsDirectionsModeKey;
  v23 = v14;
  v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [MKMapItem openMapsWithItems:v15 launchOptions:v16];

  if (v4)
  {
    v17 = objc_alloc_init(SACommandSucceeded);
LABEL_17:
    v19 = v17;
    v20 = [v17 dictionary];
    v4[2](v4, v20);
  }

LABEL_18:

  return result;
}

@end