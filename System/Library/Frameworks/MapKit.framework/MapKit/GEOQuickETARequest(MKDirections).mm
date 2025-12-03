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
  v49.receiver = self;
  v49.super_class = &off_1F16CD708;
  v14 = objc_msgSendSuper2(&v49, sel_init);
  if (v14)
  {
    v43 = v14;
    _arrivalDate = [v10 _arrivalDate];
    _departureDate = [v10 _departureDate];
    v47 = v12;
    if (_arrivalDate | _departureDate)
    {
      date = _departureDate;
      if (!_arrivalDate || !_departureDate)
      {
LABEL_9:
        transportType = [v10 transportType];
        array = [MEMORY[0x1E695DF70] array];
        if (transportType == 0xFFFFFFF)
        {
          v20 = GEOGetUserTransportTypePreference();
          if (v20 < 5)
          {
            [array addObject:qword_1E76CCA50[v20]];
          }
        }

        else if ((transportType & 1) == 0)
        {
          goto LABEL_15;
        }

        if (([array containsObject:&unk_1F1611BF0] & 1) == 0)
        {
          [array addObject:&unk_1F1611BF0];
        }

LABEL_15:
        if ((transportType & 2) != 0 && ([array containsObject:&unk_1F1611BC0] & 1) == 0)
        {
          [array addObject:&unk_1F1611BC0];
        }

        if ((transportType & 4) != 0 && ([array containsObject:&unk_1F1611BD8] & 1) == 0)
        {
          [array addObject:&unk_1F1611BD8];
        }

        if ((transportType & 8) != 0 && ([array containsObject:&unk_1F1611BA8] & 1) == 0)
        {
          [array addObject:&unk_1F1611BA8];
        }

        v48 = v11;
        if (![array count])
        {
          [array addObject:&unk_1F1611BF0];
        }

        v21 = [array mutableCopy];

        firstObject = [v21 firstObject];
        integerValue = [firstObject integerValue];

        if ([v21 count])
        {
          [v21 removeObjectAtIndex:0];
        }

        v23 = +[MKLocationManager sharedLocationManager];
        v42 = v23;
        if ([v23 hasLocation] && (objc_msgSend(v23, "isLastLocationStale") & 1) == 0)
        {
          currentLocation = [v23 currentLocation];
        }

        else
        {
          currentLocation = 0;
        }

        _automobileOptions = [v10 _automobileOptions];

        _automobileOptions2 = [v10 _automobileOptions];
        v26 = _automobileOptions2;
        if (v13 && _automobileOptions)
        {
          v27 = [_automobileOptions2 copy];

          [v27 mergeFrom:v13];
        }

        else
        {
          if (_automobileOptions2)
          {
            v28 = _automobileOptions2;
          }

          else
          {
            v28 = v13;
          }

          v27 = v28;
        }

        _includeDistanceInETA = [v10 _includeDistanceInETA];
        _additionalTransportTypesRequested = [v10 _additionalTransportTypesRequested];
        v31 = _additionalTransportTypesRequested;
        v44 = v13;
        if (_arrivalDate)
        {
          if (_additionalTransportTypesRequested)
          {
            _additionalTransportTypesRequested2 = [v10 _additionalTransportTypesRequested];
          }

          else
          {
            _additionalTransportTypesRequested2 = v21;
          }

          _transitOptions = [v10 _transitOptions];
          _walkingOptions = [v10 _walkingOptions];
          _cyclingOptions = [v10 _cyclingOptions];
          v36 = [v43 initWithSource:v48 toDestination:v47 arrivalDate:_arrivalDate transportType:integerValue currentLocation:currentLocation includeDistance:_includeDistanceInETA additionalTransportTypesRequested:_additionalTransportTypesRequested2 automobileOptions:v27 transitOptions:_transitOptions walkingOptions:_walkingOptions cyclingOptions:_cyclingOptions];

          if (!v31)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (_additionalTransportTypesRequested)
          {
            _additionalTransportTypesRequested2 = [v10 _additionalTransportTypesRequested];
          }

          else
          {
            _additionalTransportTypesRequested2 = v21;
          }

          _transitOptions2 = [v10 _transitOptions];
          _walkingOptions2 = [v10 _walkingOptions];
          _cyclingOptions2 = [v10 _cyclingOptions];
          v36 = [v43 initWithSource:v48 toDestination:v47 departureDate:date transportType:integerValue currentLocation:currentLocation includeDistance:_includeDistanceInETA additionalTransportTypesRequested:_additionalTransportTypesRequested2 automobileOptions:v27 transitOptions:_transitOptions2 walkingOptions:_walkingOptions2 cyclingOptions:_cyclingOptions2];

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
      date = [MEMORY[0x1E695DF00] date];
    }

    _arrivalDate = 0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_48:

  return v17;
}

@end