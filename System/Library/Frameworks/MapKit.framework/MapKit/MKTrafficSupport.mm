@interface MKTrafficSupport
+ (id)sharedTrafficSupport;
+ (int)GEORouteIncidentTypeForGEOTrafficIncidentType:(int)type;
+ (int)GEOTrafficIncidentTypeForGEORouteIncidentType:(int)type;
+ (int)GEOTrafficIncidentTypeForVKTrafficIncidentType:(int64_t)type;
+ (int64_t)VKTrafficIncidentTypeForGEORouteIncidentType:(int)type;
+ (int64_t)VKTrafficIncidentTypeForGEOTrafficIncidentType:(int)type;
- (id)localizedRAPDescriptionForGEOTrafficIncidentType:(int)type;
- (id)localizedReportConfirmationForGEOTrafficIncidentType:(int)type;
- (id)localizedReportedByYouForGEOTrafficIncidentType:(int)type;
- (id)localizedSubtitleForStreet:(id)street crossStreet:(id)crossStreet;
- (id)localizedTitleForGEOIncidentType:(int)type laneType:(int)laneType laneCount:(unint64_t)count;
- (id)localizedTitleForIncidentType:(int64_t)type laneType:(int64_t)laneType laneCount:(unint64_t)count;
- (void)setupTrafficIncidents;
@end

@implementation MKTrafficSupport

+ (id)sharedTrafficSupport
{
  if (sharedTrafficSupport_onceToken != -1)
  {
    dispatch_once(&sharedTrafficSupport_onceToken, &__block_literal_global_31193);
  }

  v3 = sharedTrafficSupport_trafficSupport;

  return v3;
}

void __40__MKTrafficSupport_sharedTrafficSupport__block_invoke()
{
  v0 = objc_alloc_init(MKTrafficSupport);
  v1 = sharedTrafficSupport_trafficSupport;
  sharedTrafficSupport_trafficSupport = v0;
}

- (void)setupTrafficIncidents
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MKTrafficSupport_setupTrafficIncidents__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  if (setupTrafficIncidents_onceToken != -1)
  {
    dispatch_once(&setupTrafficIncidents_onceToken, block);
  }
}

- (id)localizedReportedByYouForGEOTrafficIncidentType:(int)type
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&type];
  if (v3 <= 0xE)
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76CA430[v3]);
  }

  return v4;
}

- (id)localizedReportConfirmationForGEOTrafficIncidentType:(int)type
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&type];
  if (v3 <= 0xE)
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76CA3B8[v3]);
  }

  return v4;
}

- (id)localizedRAPDescriptionForGEOTrafficIncidentType:(int)type
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&type];
  if (v3 <= 0xE)
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76CA340[v3]);
  }

  return v4;
}

- (id)localizedSubtitleForStreet:(id)street crossStreet:(id)crossStreet
{
  streetCopy = street;
  crossStreetCopy = crossStreet;
  if ([streetCopy length])
  {
    if ([crossStreetCopy length])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = _MKLocalizedStringFromThisBundle(@"%@ at %@");
      crossStreetCopy = [v7 stringWithFormat:v8, streetCopy, crossStreetCopy];
    }

    else
    {
      crossStreetCopy = streetCopy;
    }
  }

  else
  {
    crossStreetCopy = 0;
  }

  return crossStreetCopy;
}

- (id)localizedTitleForIncidentType:(int64_t)type laneType:(int64_t)laneType laneCount:(unint64_t)count
{
  if (type <= 7)
  {
    if (type <= 3)
    {
      if (type > 1)
      {
        if (type == 2)
        {
          v6 = @"Roadwork";
        }

        else
        {
          v6 = @"Road Closure";
        }

        goto LABEL_10;
      }

      if (type)
      {
        if (type != 1)
        {
          goto LABEL_11;
        }

        v6 = @"Crash";
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (type <= 5)
    {
      if (type == 4)
      {
        v6 = @"Event";
      }

      else
      {
        v6 = @"Hazard";
      }

      goto LABEL_10;
    }

    if (type != 6)
    {
      v6 = @"Ramp Closed";
      goto LABEL_10;
    }

    if (laneType > 3)
    {
      if (laneType == 4)
      {
        v8 = @"Shoulder Lanes Closed";
        v9 = @"Shoulder Lane Closed";
        goto LABEL_43;
      }

      if (laneType != 5)
      {
        if (laneType == 6)
        {
          v8 = @"Bus Lanes Closed";
          v9 = @"Bus Lane Closed";
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v8 = @"Carpool Lanes Closed";
      v9 = @"Carpool Lane Closed";
    }

    else
    {
      if (laneType == 1)
      {
        v8 = @"Left Lanes Closed";
        v9 = @"Left Lane Closed";
        goto LABEL_43;
      }

      if (laneType != 2)
      {
        if (laneType == 3)
        {
          v8 = @"Right Lanes Closed";
          v9 = @"Right Lane Closed";
          goto LABEL_43;
        }

LABEL_40:
        v8 = @"Lanes Closed";
        v9 = @"Lane Closed";
        goto LABEL_43;
      }

      v8 = @"Center Lanes Closed";
      v9 = @"Center Lane Closed";
    }

LABEL_43:
    if (count >= 2)
    {
      v6 = v8;
    }

    else
    {
      v6 = v9;
    }

    goto LABEL_10;
  }

  if (type > 12)
  {
    if (type == 13)
    {
      v6 = @"Speed Check";
      goto LABEL_10;
    }

    if (type == 14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((type - 9) < 4)
    {
LABEL_9:
      v6 = @"Incident";
LABEL_10:
      self = _MKLocalizedStringFromThisBundle(v6);
      goto LABEL_11;
    }

    if (type == 8)
    {
      v6 = @"Traffic";
      goto LABEL_10;
    }
  }

LABEL_11:

  return self;
}

- (id)localizedTitleForGEOIncidentType:(int)type laneType:(int)laneType laneCount:(unint64_t)count
{
  v8 = [MKTrafficSupport VKTrafficIncidentTypeForGEORouteIncidentType:*&type];
  v9 = (laneType - 1);
  if (v9 < 6)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  return [(MKTrafficSupport *)self localizedTitleForIncidentType:v8 laneType:v10 laneCount:count];
}

+ (int)GEORouteIncidentTypeForGEOTrafficIncidentType:(int)type
{
  if ((type - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return dword_1A30F7A2C[type - 1];
  }
}

+ (int)GEOTrafficIncidentTypeForVKTrafficIncidentType:(int64_t)type
{
  if (type > 0xE)
  {
    return 5;
  }

  else
  {
    return dword_1A30F79F0[type];
  }
}

+ (int)GEOTrafficIncidentTypeForGEORouteIncidentType:(int)type
{
  result = 5;
  if (type <= 6)
  {
    if (type == 6)
    {
      v4 = 8;
    }

    else
    {
      v4 = 5;
    }

    if (type == 5)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    if (type == 4)
    {
      v6 = 6;
    }

    else
    {
      v6 = v5;
    }

    if (type == 3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    if (type == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (type == 1)
    {
      v9 = 7;
    }

    else
    {
      v9 = v8;
    }

    if (type <= 3)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }

  else if (type <= 9)
  {
    if (type == 9)
    {
      v10 = 15;
    }

    else
    {
      v10 = 5;
    }

    if (type == 8)
    {
      v11 = 11;
    }

    else
    {
      v11 = v10;
    }

    if (type == 7)
    {
      return 10;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    if (type <= 13)
    {
      if (type != 10)
      {
        if (type == 13)
        {
          return 16;
        }

        else
        {
          return 5;
        }
      }

      return 0;
    }

    if (type == 14 || type == 100)
    {
      return 0;
    }
  }

  return result;
}

+ (int64_t)VKTrafficIncidentTypeForGEORouteIncidentType:(int)type
{
  v3 = 1;
  if (type <= 6)
  {
    v4 = 5;
    v8 = 6;
    v9 = 7;
    if (type != 6)
    {
      v9 = 1;
    }

    if (type != 5)
    {
      v8 = v9;
    }

    if (type != 4)
    {
      v4 = v8;
    }

    if (type == 3)
    {
      v3 = 4;
    }

    if (type == 2)
    {
      v3 = 3;
    }

    if (type == 1)
    {
      v3 = 2;
    }

    v7 = type <= 3;
  }

  else
  {
    v4 = 14;
    if (type != 14)
    {
      v4 = type != 100;
    }

    v5 = 11;
    v6 = 13;
    if (type != 13)
    {
      v6 = 1;
    }

    if (type != 10)
    {
      v5 = v6;
    }

    if (type <= 13)
    {
      v4 = v5;
    }

    if (type == 9)
    {
      v3 = 10;
    }

    if (type == 8)
    {
      v3 = 9;
    }

    if (type == 7)
    {
      v3 = 8;
    }

    v7 = type <= 9;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (int64_t)VKTrafficIncidentTypeForGEOTrafficIncidentType:(int)type
{
  if (type > 0x13)
  {
    return 1;
  }

  else
  {
    return qword_1A30F7950[type];
  }
}

@end