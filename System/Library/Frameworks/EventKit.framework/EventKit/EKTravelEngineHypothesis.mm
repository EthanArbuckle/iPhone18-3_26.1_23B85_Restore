@interface EKTravelEngineHypothesis
+ (id)syntheticHypothesisWithStartDate:(id)a3 conservativeTravelTime:(double)a4 estimatedTravelTime:(double)a5 aggressiveTravelTime:(double)a6;
- (BOOL)compareTravelSections:(id)a3 comparedSection:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHypothesis:(id)a3;
- (BOOL)isMultiModal;
- (EKTravelEngineHypothesis)initWithCoder:(id)a3;
- (EKTravelEngineHypothesis)initWithTransportType:(int)a3 conservativeDepartureDate:(id)a4 conservativeTravelTime:(double)a5 suggestedDepartureDate:(id)a6 estimatedTravelTime:(double)a7 aggressiveDepartureDate:(id)a8 aggressiveTravelTime:(double)a9 routeName:(id)a10 supportsLiveTraffic:(BOOL)a11 currentTrafficDensity:(unint64_t)a12 trafficDensityDescription:(id)a13 travelState:(int64_t)a14 travelSections:(id)a15;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKTravelEngineHypothesis

- (EKTravelEngineHypothesis)initWithTransportType:(int)a3 conservativeDepartureDate:(id)a4 conservativeTravelTime:(double)a5 suggestedDepartureDate:(id)a6 estimatedTravelTime:(double)a7 aggressiveDepartureDate:(id)a8 aggressiveTravelTime:(double)a9 routeName:(id)a10 supportsLiveTraffic:(BOOL)a11 currentTrafficDensity:(unint64_t)a12 trafficDensityDescription:(id)a13 travelState:(int64_t)a14 travelSections:(id)a15
{
  v23 = a4;
  v24 = a6;
  v25 = a8;
  v26 = a10;
  v27 = a13;
  v28 = a15;
  v45.receiver = self;
  v45.super_class = EKTravelEngineHypothesis;
  v29 = [(EKTravelEngineHypothesis *)&v45 init];
  v30 = v29;
  if (v29)
  {
    v29->_transportType = a3;
    v31 = [v23 copy];
    conservativeDepartureDate = v30->_conservativeDepartureDate;
    v30->_conservativeDepartureDate = v31;

    v30->_conservativeTravelTime = a5;
    v33 = [v24 copy];
    suggestedDepartureDate = v30->_suggestedDepartureDate;
    v30->_suggestedDepartureDate = v33;

    v30->_estimatedTravelTime = a7;
    v35 = [v25 copy];
    aggressiveDepartureDate = v30->_aggressiveDepartureDate;
    v30->_aggressiveDepartureDate = v35;

    v30->_aggressiveTravelTime = a9;
    v37 = [v26 copy];
    routeName = v30->_routeName;
    v30->_routeName = v37;

    v30->_supportsLiveTraffic = a11;
    v30->_currentTrafficDensity = a12;
    v39 = [v27 copy];
    trafficDensityDescription = v30->_trafficDensityDescription;
    v30->_trafficDensityDescription = v39;

    v30->_travelState = a14;
    v41 = [MEMORY[0x1E695DF00] date];
    creationDate = v30->_creationDate;
    v30->_creationDate = v41;

    objc_storeStrong(&v30->_travelSections, a15);
  }

  return v30;
}

- (id)description
{
  v19 = MEMORY[0x1E696AEC0];
  v18 = objc_opt_class();
  v3 = [(EKTravelEngineHypothesis *)self transportType];
  if (v3 >= 7)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v20 = off_1E77FEC90[v3];
  }

  v24 = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  v4 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v23 = [v4 numberWithDouble:?];
  v22 = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  v5 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v21 = [v5 numberWithDouble:?];
  v6 = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  v7 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v17 = [v7 numberWithDouble:?];
  v8 = [(EKTravelEngineHypothesis *)self routeName];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[EKTravelEngineHypothesis supportsLiveTraffic](self, "supportsLiveTraffic")}];
  v10 = [EKTravelEngineUtilities geoTrafficDensityAsString:[(EKTravelEngineHypothesis *)self currentTrafficDensity]];
  v11 = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  v12 = [(EKTravelEngineHypothesis *)self travelState];
  if (v12 >= 6)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %lu)", v12];
  }

  else
  {
    v13 = off_1E77FECC8[v12];
  }

  v14 = [(EKTravelEngineHypothesis *)self creationDate];
  v15 = [v19 stringWithFormat:@"<%@: %p>(transportType = %@, conservativeDepartureDate = %@, conservativeTravelTime = %@, suggestedDepartureDate = %@, estimatedTravelTime = %@, aggressiveDepartureDate = %@, aggressiveTravelTime = %@, routeName = %@, supportsLiveTraffic = %@, currentTrafficDensity = %@, trafficDensityDescription = %@, travelState = %@, creationDate = %@)", v18, self, v20, v24, v23, v22, v21, v6, v17, v8, v9, v10, v11, v13, v14];

  return v15;
}

- (BOOL)isMultiModal
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    LOBYTE(v3) = [(NSArray *)self->_travelSections count]> 1;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EKTravelEngineHypothesis *)self isEqualToHypothesis:v4];

  return v5;
}

- (BOOL)isEqualToHypothesis:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v35 = 1;
  }

  else
  {
    v5 = [(EKTravelEngineHypothesis *)self transportType];
    if (v5 != [(EKTravelEngineHypothesis *)v4 transportType])
    {
      goto LABEL_15;
    }

    v6 = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
    v7 = [(EKTravelEngineHypothesis *)v4 conservativeDepartureDate];
    v8 = CalEqualObjects();

    if (!v8)
    {
      goto LABEL_15;
    }

    [(EKTravelEngineHypothesis *)self conservativeTravelTime];
    v10 = v9;
    [(EKTravelEngineHypothesis *)v4 conservativeTravelTime];
    if (v10 != v11)
    {
      goto LABEL_15;
    }

    v12 = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
    v13 = [(EKTravelEngineHypothesis *)v4 suggestedDepartureDate];
    v14 = CalEqualObjects();

    if (!v14)
    {
      goto LABEL_15;
    }

    [(EKTravelEngineHypothesis *)self estimatedTravelTime];
    v16 = v15;
    [(EKTravelEngineHypothesis *)v4 estimatedTravelTime];
    if (v16 != v17)
    {
      goto LABEL_15;
    }

    v18 = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
    v19 = [(EKTravelEngineHypothesis *)v4 aggressiveDepartureDate];
    v20 = CalEqualObjects();

    if (!v20)
    {
      goto LABEL_15;
    }

    [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
    v22 = v21;
    [(EKTravelEngineHypothesis *)v4 aggressiveTravelTime];
    if (v22 != v23)
    {
      goto LABEL_15;
    }

    v24 = [(EKTravelEngineHypothesis *)self routeName];
    v25 = [(EKTravelEngineHypothesis *)v4 routeName];
    v26 = CalEqualStrings();

    if (!v26)
    {
      goto LABEL_15;
    }

    v27 = [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
    if (v27 != [(EKTravelEngineHypothesis *)v4 supportsLiveTraffic])
    {
      goto LABEL_15;
    }

    v28 = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
    if (v28 != [(EKTravelEngineHypothesis *)v4 currentTrafficDensity])
    {
      goto LABEL_15;
    }

    v29 = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
    v30 = [(EKTravelEngineHypothesis *)v4 trafficDensityDescription];
    v31 = CalEqualStrings();

    if (!v31)
    {
      goto LABEL_15;
    }

    v32 = [(EKTravelEngineHypothesis *)self travelState];
    if (v32 == [(EKTravelEngineHypothesis *)v4 travelState])
    {
      v33 = [(EKTravelEngineHypothesis *)self travelSections];
      v34 = [(EKTravelEngineHypothesis *)v4 travelSections];
      v35 = [(EKTravelEngineHypothesis *)self compareTravelSections:v33 comparedSection:v34];
    }

    else
    {
LABEL_15:
      v35 = 0;
    }
  }

  return v35;
}

- (BOOL)compareTravelSections:(id)a3 comparedSection:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = [v6 objectEnumerator];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v8 nextObject];
          [v14 estimatedTravelTime];
          v17 = v16;
          [v15 estimatedTravelTime];
          if (v17 != v18 || (v19 = [v14 transportType], v19 != objc_msgSend(v15, "transportType")))
          {

            v20 = 0;
            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v20 = 1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 1;
    }

LABEL_15:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (unint64_t)hash
{
  v3 = [(EKTravelEngineHypothesis *)self transportType];
  v4 = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  v5 = [v4 hash] ^ v3;

  v6 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v7 = [v6 numberWithDouble:?];
  v8 = [v7 hash];

  v9 = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  v10 = v5 ^ [v9 hash] ^ v8;

  v11 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v12 = [v11 numberWithDouble:?];
  v13 = [v12 hash];

  v14 = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  v15 = v10 ^ v13 ^ [v14 hash];

  v16 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v17 = [v16 numberWithDouble:?];
  v18 = [v17 hash];

  v19 = [(EKTravelEngineHypothesis *)self routeName];
  v20 = v18 ^ [v19 hash];

  v21 = v15 ^ v20 ^ [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
  v22 = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
  v23 = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  v24 = v22 ^ [v23 hash];

  return v21 ^ v24 ^ [(EKTravelEngineHypothesis *)self travelState];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v22 = [EKMutableTravelEngineHypothesis allocWithZone:a3];
  v4 = [(EKTravelEngineHypothesis *)self transportType];
  v5 = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v7 = v6;
  v8 = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v10 = v9;
  v11 = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v13 = v12;
  v14 = [(EKTravelEngineHypothesis *)self routeName];
  v15 = [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
  v16 = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
  v17 = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  v18 = [(EKTravelEngineHypothesis *)self travelState];
  v19 = [(EKTravelEngineHypothesis *)self travelSections];
  v20 = [(EKTravelEngineHypothesis *)v22 initWithTransportType:v4 conservativeDepartureDate:v5 conservativeTravelTime:v8 suggestedDepartureDate:v11 estimatedTravelTime:v14 aggressiveDepartureDate:v15 aggressiveTravelTime:v7 routeName:v10 supportsLiveTraffic:v13 currentTrafficDensity:v16 trafficDensityDescription:v17 travelState:v18 travelSections:v19];

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInt:{-[EKTravelEngineHypothesis transportType](self, "transportType")}];
  [v5 encodeObject:v6 forKey:@"transportType"];

  v7 = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  [v5 encodeObject:v7 forKey:@"conservativeDepartureDate"];

  v8 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v9 = [v8 numberWithDouble:?];
  [v5 encodeObject:v9 forKey:@"conservativeTravelTime"];

  v10 = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  [v5 encodeObject:v10 forKey:@"suggestedDepartureDate"];

  v11 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v12 = [v11 numberWithDouble:?];
  [v5 encodeObject:v12 forKey:@"estimatedTravelTime"];

  v13 = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  [v5 encodeObject:v13 forKey:@"aggressiveDepartureDate"];

  v14 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v15 = [v14 numberWithDouble:?];
  [v5 encodeObject:v15 forKey:@"aggressiveTravelTime"];

  v16 = [(EKTravelEngineHypothesis *)self routeName];
  [v5 encodeObject:v16 forKey:@"routeName"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[EKTravelEngineHypothesis supportsLiveTraffic](self, "supportsLiveTraffic")}];
  [v5 encodeObject:v17 forKey:@"supportsLiveTraffic"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKTravelEngineHypothesis currentTrafficDensity](self, "currentTrafficDensity")}];
  [v5 encodeObject:v18 forKey:@"currentTrafficDensity"];

  v19 = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  [v5 encodeObject:v19 forKey:@"trafficDensityDescription"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EKTravelEngineHypothesis travelState](self, "travelState")}];
  [v5 encodeObject:v20 forKey:@"travelState"];

  v21 = [(EKTravelEngineHypothesis *)self travelSections];
  [v5 encodeObject:v21 forKey:@"travelSections"];
}

- (EKTravelEngineHypothesis)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"transportType"];
  v28 = [v4 intValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"conservativeDepartureDate"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"conservativeTravelTime"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedDepartureDate"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTravelTime"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveDepartureDate"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveTravelTime"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"routeName"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"supportsLiveTraffic"];
  v19 = [v18 BOOLValue];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"currentTrafficDensity"];
  v21 = [v20 unsignedIntegerValue];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"trafficDensityDescription"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"travelState"];
  v24 = [v23 integerValue];

  v25 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"travelSections"];

  v26 = [(EKTravelEngineHypothesis *)self initWithTransportType:v28 conservativeDepartureDate:v5 conservativeTravelTime:v9 suggestedDepartureDate:v13 estimatedTravelTime:v17 aggressiveDepartureDate:v19 aggressiveTravelTime:v8 routeName:v12 supportsLiveTraffic:v16 currentTrafficDensity:v21 trafficDensityDescription:v22 travelState:v24 travelSections:v25];
  return v26;
}

+ (id)syntheticHypothesisWithStartDate:(id)a3 conservativeTravelTime:(double)a4 estimatedTravelTime:(double)a5 aggressiveTravelTime:(double)a6
{
  v9 = a3;
  v10 = [EKTravelEngineHypothesis alloc];
  v11 = [v9 dateByAddingTimeInterval:-a4];
  v12 = [v9 dateByAddingTimeInterval:-a5];
  v13 = [v9 dateByAddingTimeInterval:-a6];

  v14 = [(EKTravelEngineHypothesis *)v10 initWithTransportType:4 conservativeDepartureDate:v11 conservativeTravelTime:v12 suggestedDepartureDate:v13 estimatedTravelTime:0 aggressiveDepartureDate:0 aggressiveTravelTime:a4 routeName:a5 supportsLiveTraffic:a6 currentTrafficDensity:0 trafficDensityDescription:0 travelState:0];

  return v14;
}

@end