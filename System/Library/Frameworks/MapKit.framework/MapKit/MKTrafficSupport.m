@interface MKTrafficSupport
+ (id)sharedTrafficSupport;
+ (int)GEORouteIncidentTypeForGEOTrafficIncidentType:(int)a3;
+ (int)GEOTrafficIncidentTypeForGEORouteIncidentType:(int)a3;
+ (int)GEOTrafficIncidentTypeForVKTrafficIncidentType:(int64_t)a3;
+ (int64_t)VKTrafficIncidentTypeForGEORouteIncidentType:(int)a3;
+ (int64_t)VKTrafficIncidentTypeForGEOTrafficIncidentType:(int)a3;
- (id)localizedRAPDescriptionForGEOTrafficIncidentType:(int)a3;
- (id)localizedReportConfirmationForGEOTrafficIncidentType:(int)a3;
- (id)localizedReportedByYouForGEOTrafficIncidentType:(int)a3;
- (id)localizedSubtitleForStreet:(id)a3 crossStreet:(id)a4;
- (id)localizedTitleForGEOIncidentType:(int)a3 laneType:(int)a4 laneCount:(unint64_t)a5;
- (id)localizedTitleForIncidentType:(int64_t)a3 laneType:(int64_t)a4 laneCount:(unint64_t)a5;
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

- (id)localizedReportedByYouForGEOTrafficIncidentType:(int)a3
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&a3];
  if (v3 <= 0xE)
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76CA430[v3]);
  }

  return v4;
}

- (id)localizedReportConfirmationForGEOTrafficIncidentType:(int)a3
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&a3];
  if (v3 <= 0xE)
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76CA3B8[v3]);
  }

  return v4;
}

- (id)localizedRAPDescriptionForGEOTrafficIncidentType:(int)a3
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&a3];
  if (v3 <= 0xE)
  {
    v4 = _MKLocalizedStringFromThisBundle(off_1E76CA340[v3]);
  }

  return v4;
}

- (id)localizedSubtitleForStreet:(id)a3 crossStreet:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    if ([v6 length])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = _MKLocalizedStringFromThisBundle(@"%@ at %@");
      v9 = [v7 stringWithFormat:v8, v5, v6];
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedTitleForIncidentType:(int64_t)a3 laneType:(int64_t)a4 laneCount:(unint64_t)a5
{
  if (a3 <= 7)
  {
    if (a3 <= 3)
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v6 = @"Roadwork";
        }

        else
        {
          v6 = @"Road Closure";
        }

        goto LABEL_10;
      }

      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_11;
        }

        v6 = @"Crash";
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v6 = @"Event";
      }

      else
      {
        v6 = @"Hazard";
      }

      goto LABEL_10;
    }

    if (a3 != 6)
    {
      v6 = @"Ramp Closed";
      goto LABEL_10;
    }

    if (a4 > 3)
    {
      if (a4 == 4)
      {
        v8 = @"Shoulder Lanes Closed";
        v9 = @"Shoulder Lane Closed";
        goto LABEL_43;
      }

      if (a4 != 5)
      {
        if (a4 == 6)
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
      if (a4 == 1)
      {
        v8 = @"Left Lanes Closed";
        v9 = @"Left Lane Closed";
        goto LABEL_43;
      }

      if (a4 != 2)
      {
        if (a4 == 3)
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
    if (a5 >= 2)
    {
      v6 = v8;
    }

    else
    {
      v6 = v9;
    }

    goto LABEL_10;
  }

  if (a3 > 12)
  {
    if (a3 == 13)
    {
      v6 = @"Speed Check";
      goto LABEL_10;
    }

    if (a3 == 14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((a3 - 9) < 4)
    {
LABEL_9:
      v6 = @"Incident";
LABEL_10:
      self = _MKLocalizedStringFromThisBundle(v6);
      goto LABEL_11;
    }

    if (a3 == 8)
    {
      v6 = @"Traffic";
      goto LABEL_10;
    }
  }

LABEL_11:

  return self;
}

- (id)localizedTitleForGEOIncidentType:(int)a3 laneType:(int)a4 laneCount:(unint64_t)a5
{
  v8 = [MKTrafficSupport VKTrafficIncidentTypeForGEORouteIncidentType:*&a3];
  v9 = (a4 - 1);
  if (v9 < 6)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  return [(MKTrafficSupport *)self localizedTitleForIncidentType:v8 laneType:v10 laneCount:a5];
}

+ (int)GEORouteIncidentTypeForGEOTrafficIncidentType:(int)a3
{
  if ((a3 - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return dword_1A30F7A2C[a3 - 1];
  }
}

+ (int)GEOTrafficIncidentTypeForVKTrafficIncidentType:(int64_t)a3
{
  if (a3 > 0xE)
  {
    return 5;
  }

  else
  {
    return dword_1A30F79F0[a3];
  }
}

+ (int)GEOTrafficIncidentTypeForGEORouteIncidentType:(int)a3
{
  result = 5;
  if (a3 <= 6)
  {
    if (a3 == 6)
    {
      v4 = 8;
    }

    else
    {
      v4 = 5;
    }

    if (a3 == 5)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    if (a3 == 4)
    {
      v6 = 6;
    }

    else
    {
      v6 = v5;
    }

    if (a3 == 3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    if (a3 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (a3 == 1)
    {
      v9 = 7;
    }

    else
    {
      v9 = v8;
    }

    if (a3 <= 3)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }

  else if (a3 <= 9)
  {
    if (a3 == 9)
    {
      v10 = 15;
    }

    else
    {
      v10 = 5;
    }

    if (a3 == 8)
    {
      v11 = 11;
    }

    else
    {
      v11 = v10;
    }

    if (a3 == 7)
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
    if (a3 <= 13)
    {
      if (a3 != 10)
      {
        if (a3 == 13)
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

    if (a3 == 14 || a3 == 100)
    {
      return 0;
    }
  }

  return result;
}

+ (int64_t)VKTrafficIncidentTypeForGEORouteIncidentType:(int)a3
{
  v3 = 1;
  if (a3 <= 6)
  {
    v4 = 5;
    v8 = 6;
    v9 = 7;
    if (a3 != 6)
    {
      v9 = 1;
    }

    if (a3 != 5)
    {
      v8 = v9;
    }

    if (a3 != 4)
    {
      v4 = v8;
    }

    if (a3 == 3)
    {
      v3 = 4;
    }

    if (a3 == 2)
    {
      v3 = 3;
    }

    if (a3 == 1)
    {
      v3 = 2;
    }

    v7 = a3 <= 3;
  }

  else
  {
    v4 = 14;
    if (a3 != 14)
    {
      v4 = a3 != 100;
    }

    v5 = 11;
    v6 = 13;
    if (a3 != 13)
    {
      v6 = 1;
    }

    if (a3 != 10)
    {
      v5 = v6;
    }

    if (a3 <= 13)
    {
      v4 = v5;
    }

    if (a3 == 9)
    {
      v3 = 10;
    }

    if (a3 == 8)
    {
      v3 = 9;
    }

    if (a3 == 7)
    {
      v3 = 8;
    }

    v7 = a3 <= 9;
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

+ (int64_t)VKTrafficIncidentTypeForGEOTrafficIncidentType:(int)a3
{
  if (a3 > 0x13)
  {
    return 1;
  }

  else
  {
    return qword_1A30F7950[a3];
  }
}

@end