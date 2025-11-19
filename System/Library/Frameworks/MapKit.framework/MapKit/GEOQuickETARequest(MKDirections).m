@interface GEOQuickETARequest(MKDirections)
- (id)initWithDirectionsRequest:()MKDirections origin:destination:automobileOptions:;
@end

@implementation GEOQuickETARequest(MKDirections)

- (id)initWithDirectionsRequest:()MKDirections origin:destination:automobileOptions:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v49.receiver = a1;
  v49.super_class = &off_1F16CD708;
  v14 = objc_msgSendSuper2(&v49, sel_init);
  if (v14)
  {
    v43 = v14;
    v15 = [v10 _arrivalDate];
    v16 = [v10 _departureDate];
    v47 = v12;
    if (v15 | v16)
    {
      v45 = v16;
      if (!v15 || !v16)
      {
LABEL_9:
        v18 = [v10 transportType];
        v19 = [MEMORY[0x1E695DF70] array];
        if (v18 == 0xFFFFFFF)
        {
          v20 = GEOGetUserTransportTypePreference();
          if (v20 < 5)
          {
            [v19 addObject:qword_1E76CCA50[v20]];
          }
        }

        else if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }

        if (([v19 containsObject:&unk_1F1611BF0] & 1) == 0)
        {
          [v19 addObject:&unk_1F1611BF0];
        }

LABEL_15:
        if ((v18 & 2) != 0 && ([v19 containsObject:&unk_1F1611BC0] & 1) == 0)
        {
          [v19 addObject:&unk_1F1611BC0];
        }

        if ((v18 & 4) != 0 && ([v19 containsObject:&unk_1F1611BD8] & 1) == 0)
        {
          [v19 addObject:&unk_1F1611BD8];
        }

        if ((v18 & 8) != 0 && ([v19 containsObject:&unk_1F1611BA8] & 1) == 0)
        {
          [v19 addObject:&unk_1F1611BA8];
        }

        v48 = v11;
        if (![v19 count])
        {
          [v19 addObject:&unk_1F1611BF0];
        }

        v21 = [v19 mutableCopy];

        v22 = [v21 firstObject];
        v41 = [v22 integerValue];

        if ([v21 count])
        {
          [v21 removeObjectAtIndex:0];
        }

        v23 = +[MKLocationManager sharedLocationManager];
        v42 = v23;
        if ([v23 hasLocation] && (objc_msgSend(v23, "isLastLocationStale") & 1) == 0)
        {
          v46 = [v23 currentLocation];
        }

        else
        {
          v46 = 0;
        }

        v24 = [v10 _automobileOptions];

        v25 = [v10 _automobileOptions];
        v26 = v25;
        if (v13 && v24)
        {
          v27 = [v25 copy];

          [v27 mergeFrom:v13];
        }

        else
        {
          if (v25)
          {
            v28 = v25;
          }

          else
          {
            v28 = v13;
          }

          v27 = v28;
        }

        v29 = [v10 _includeDistanceInETA];
        v30 = [v10 _additionalTransportTypesRequested];
        v31 = v30;
        v44 = v13;
        if (v15)
        {
          if (v30)
          {
            v32 = [v10 _additionalTransportTypesRequested];
          }

          else
          {
            v32 = v21;
          }

          v33 = [v10 _transitOptions];
          v34 = [v10 _walkingOptions];
          v35 = [v10 _cyclingOptions];
          v36 = [v43 initWithSource:v48 toDestination:v47 arrivalDate:v15 transportType:v41 currentLocation:v46 includeDistance:v29 additionalTransportTypesRequested:v32 automobileOptions:v27 transitOptions:v33 walkingOptions:v34 cyclingOptions:v35];

          if (!v31)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v30)
          {
            v32 = [v10 _additionalTransportTypesRequested];
          }

          else
          {
            v32 = v21;
          }

          v38 = [v10 _transitOptions];
          v39 = [v10 _walkingOptions];
          v40 = [v10 _cyclingOptions];
          v36 = [v43 initWithSource:v48 toDestination:v47 departureDate:v45 transportType:v41 currentLocation:v46 includeDistance:v29 additionalTransportTypesRequested:v32 automobileOptions:v27 transitOptions:v38 walkingOptions:v39 cyclingOptions:v40];

          if (!v31)
          {
            goto LABEL_47;
          }
        }

LABEL_47:
        v17 = v36;

        v12 = v47;
        v11 = v48;
        v13 = v44;
        goto LABEL_48;
      }
    }

    else
    {
      v45 = [MEMORY[0x1E695DF00] date];
    }

    v15 = 0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_48:

  return v17;
}

@end