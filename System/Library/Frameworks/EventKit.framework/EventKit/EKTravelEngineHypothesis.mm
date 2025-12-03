@interface EKTravelEngineHypothesis
+ (id)syntheticHypothesisWithStartDate:(id)date conservativeTravelTime:(double)time estimatedTravelTime:(double)travelTime aggressiveTravelTime:(double)aggressiveTravelTime;
- (BOOL)compareTravelSections:(id)sections comparedSection:(id)section;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHypothesis:(id)hypothesis;
- (BOOL)isMultiModal;
- (EKTravelEngineHypothesis)initWithCoder:(id)coder;
- (EKTravelEngineHypothesis)initWithTransportType:(int)type conservativeDepartureDate:(id)date conservativeTravelTime:(double)time suggestedDepartureDate:(id)departureDate estimatedTravelTime:(double)travelTime aggressiveDepartureDate:(id)aggressiveDepartureDate aggressiveTravelTime:(double)aggressiveTravelTime routeName:(id)self0 supportsLiveTraffic:(BOOL)self1 currentTrafficDensity:(unint64_t)self2 trafficDensityDescription:(id)self3 travelState:(int64_t)self4 travelSections:(id)self5;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKTravelEngineHypothesis

- (EKTravelEngineHypothesis)initWithTransportType:(int)type conservativeDepartureDate:(id)date conservativeTravelTime:(double)time suggestedDepartureDate:(id)departureDate estimatedTravelTime:(double)travelTime aggressiveDepartureDate:(id)aggressiveDepartureDate aggressiveTravelTime:(double)aggressiveTravelTime routeName:(id)self0 supportsLiveTraffic:(BOOL)self1 currentTrafficDensity:(unint64_t)self2 trafficDensityDescription:(id)self3 travelState:(int64_t)self4 travelSections:(id)self5
{
  dateCopy = date;
  departureDateCopy = departureDate;
  aggressiveDepartureDateCopy = aggressiveDepartureDate;
  nameCopy = name;
  descriptionCopy = description;
  sectionsCopy = sections;
  v45.receiver = self;
  v45.super_class = EKTravelEngineHypothesis;
  v29 = [(EKTravelEngineHypothesis *)&v45 init];
  v30 = v29;
  if (v29)
  {
    v29->_transportType = type;
    v31 = [dateCopy copy];
    conservativeDepartureDate = v30->_conservativeDepartureDate;
    v30->_conservativeDepartureDate = v31;

    v30->_conservativeTravelTime = time;
    v33 = [departureDateCopy copy];
    suggestedDepartureDate = v30->_suggestedDepartureDate;
    v30->_suggestedDepartureDate = v33;

    v30->_estimatedTravelTime = travelTime;
    v35 = [aggressiveDepartureDateCopy copy];
    aggressiveDepartureDate = v30->_aggressiveDepartureDate;
    v30->_aggressiveDepartureDate = v35;

    v30->_aggressiveTravelTime = aggressiveTravelTime;
    v37 = [nameCopy copy];
    routeName = v30->_routeName;
    v30->_routeName = v37;

    v30->_supportsLiveTraffic = traffic;
    v30->_currentTrafficDensity = density;
    v39 = [descriptionCopy copy];
    trafficDensityDescription = v30->_trafficDensityDescription;
    v30->_trafficDensityDescription = v39;

    v30->_travelState = state;
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v30->_creationDate;
    v30->_creationDate = date;

    objc_storeStrong(&v30->_travelSections, sections);
  }

  return v30;
}

- (id)description
{
  v19 = MEMORY[0x1E696AEC0];
  v18 = objc_opt_class();
  transportType = [(EKTravelEngineHypothesis *)self transportType];
  if (transportType >= 7)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
  }

  else
  {
    v20 = off_1E77FEC90[transportType];
  }

  conservativeDepartureDate = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  v4 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v23 = [v4 numberWithDouble:?];
  suggestedDepartureDate = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  v5 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v21 = [v5 numberWithDouble:?];
  aggressiveDepartureDate = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  v7 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v17 = [v7 numberWithDouble:?];
  routeName = [(EKTravelEngineHypothesis *)self routeName];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[EKTravelEngineHypothesis supportsLiveTraffic](self, "supportsLiveTraffic")}];
  v10 = [EKTravelEngineUtilities geoTrafficDensityAsString:[(EKTravelEngineHypothesis *)self currentTrafficDensity]];
  trafficDensityDescription = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  travelState = [(EKTravelEngineHypothesis *)self travelState];
  if (travelState >= 6)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %lu)", travelState];
  }

  else
  {
    v13 = off_1E77FECC8[travelState];
  }

  creationDate = [(EKTravelEngineHypothesis *)self creationDate];
  v15 = [v19 stringWithFormat:@"<%@: %p>(transportType = %@, conservativeDepartureDate = %@, conservativeTravelTime = %@, suggestedDepartureDate = %@, estimatedTravelTime = %@, aggressiveDepartureDate = %@, aggressiveTravelTime = %@, routeName = %@, supportsLiveTraffic = %@, currentTrafficDensity = %@, trafficDensityDescription = %@, travelState = %@, creationDate = %@)", v18, self, v20, conservativeDepartureDate, v23, suggestedDepartureDate, v21, aggressiveDepartureDate, v17, routeName, v9, v10, trafficDensityDescription, v13, creationDate];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EKTravelEngineHypothesis *)self isEqualToHypothesis:equalCopy];

  return v5;
}

- (BOOL)isEqualToHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  if (self == hypothesisCopy)
  {
    v35 = 1;
  }

  else
  {
    transportType = [(EKTravelEngineHypothesis *)self transportType];
    if (transportType != [(EKTravelEngineHypothesis *)hypothesisCopy transportType])
    {
      goto LABEL_15;
    }

    conservativeDepartureDate = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
    conservativeDepartureDate2 = [(EKTravelEngineHypothesis *)hypothesisCopy conservativeDepartureDate];
    v8 = CalEqualObjects();

    if (!v8)
    {
      goto LABEL_15;
    }

    [(EKTravelEngineHypothesis *)self conservativeTravelTime];
    v10 = v9;
    [(EKTravelEngineHypothesis *)hypothesisCopy conservativeTravelTime];
    if (v10 != v11)
    {
      goto LABEL_15;
    }

    suggestedDepartureDate = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
    suggestedDepartureDate2 = [(EKTravelEngineHypothesis *)hypothesisCopy suggestedDepartureDate];
    v14 = CalEqualObjects();

    if (!v14)
    {
      goto LABEL_15;
    }

    [(EKTravelEngineHypothesis *)self estimatedTravelTime];
    v16 = v15;
    [(EKTravelEngineHypothesis *)hypothesisCopy estimatedTravelTime];
    if (v16 != v17)
    {
      goto LABEL_15;
    }

    aggressiveDepartureDate = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
    aggressiveDepartureDate2 = [(EKTravelEngineHypothesis *)hypothesisCopy aggressiveDepartureDate];
    v20 = CalEqualObjects();

    if (!v20)
    {
      goto LABEL_15;
    }

    [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
    v22 = v21;
    [(EKTravelEngineHypothesis *)hypothesisCopy aggressiveTravelTime];
    if (v22 != v23)
    {
      goto LABEL_15;
    }

    routeName = [(EKTravelEngineHypothesis *)self routeName];
    routeName2 = [(EKTravelEngineHypothesis *)hypothesisCopy routeName];
    v26 = CalEqualStrings();

    if (!v26)
    {
      goto LABEL_15;
    }

    supportsLiveTraffic = [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
    if (supportsLiveTraffic != [(EKTravelEngineHypothesis *)hypothesisCopy supportsLiveTraffic])
    {
      goto LABEL_15;
    }

    currentTrafficDensity = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
    if (currentTrafficDensity != [(EKTravelEngineHypothesis *)hypothesisCopy currentTrafficDensity])
    {
      goto LABEL_15;
    }

    trafficDensityDescription = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
    trafficDensityDescription2 = [(EKTravelEngineHypothesis *)hypothesisCopy trafficDensityDescription];
    v31 = CalEqualStrings();

    if (!v31)
    {
      goto LABEL_15;
    }

    travelState = [(EKTravelEngineHypothesis *)self travelState];
    if (travelState == [(EKTravelEngineHypothesis *)hypothesisCopy travelState])
    {
      travelSections = [(EKTravelEngineHypothesis *)self travelSections];
      travelSections2 = [(EKTravelEngineHypothesis *)hypothesisCopy travelSections];
      v35 = [(EKTravelEngineHypothesis *)self compareTravelSections:travelSections comparedSection:travelSections2];
    }

    else
    {
LABEL_15:
      v35 = 0;
    }
  }

  return v35;
}

- (BOOL)compareTravelSections:(id)sections comparedSection:(id)section
{
  v28 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  sectionCopy = section;
  v7 = [sectionsCopy count];
  if (v7 == [sectionCopy count])
  {
    objectEnumerator = [sectionCopy objectEnumerator];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = sectionsCopy;
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
          nextObject = [objectEnumerator nextObject];
          [v14 estimatedTravelTime];
          v17 = v16;
          [nextObject estimatedTravelTime];
          if (v17 != v18 || (v19 = [v14 transportType], v19 != objc_msgSend(nextObject, "transportType")))
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
  transportType = [(EKTravelEngineHypothesis *)self transportType];
  conservativeDepartureDate = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  v5 = [conservativeDepartureDate hash] ^ transportType;

  v6 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v7 = [v6 numberWithDouble:?];
  v8 = [v7 hash];

  suggestedDepartureDate = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  v10 = v5 ^ [suggestedDepartureDate hash] ^ v8;

  v11 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v12 = [v11 numberWithDouble:?];
  v13 = [v12 hash];

  aggressiveDepartureDate = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  v15 = v10 ^ v13 ^ [aggressiveDepartureDate hash];

  v16 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v17 = [v16 numberWithDouble:?];
  v18 = [v17 hash];

  routeName = [(EKTravelEngineHypothesis *)self routeName];
  v20 = v18 ^ [routeName hash];

  v21 = v15 ^ v20 ^ [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
  currentTrafficDensity = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
  trafficDensityDescription = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  v24 = currentTrafficDensity ^ [trafficDensityDescription hash];

  return v21 ^ v24 ^ [(EKTravelEngineHypothesis *)self travelState];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v22 = [EKMutableTravelEngineHypothesis allocWithZone:zone];
  transportType = [(EKTravelEngineHypothesis *)self transportType];
  conservativeDepartureDate = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v7 = v6;
  suggestedDepartureDate = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v10 = v9;
  aggressiveDepartureDate = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v13 = v12;
  routeName = [(EKTravelEngineHypothesis *)self routeName];
  supportsLiveTraffic = [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
  currentTrafficDensity = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
  trafficDensityDescription = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  travelState = [(EKTravelEngineHypothesis *)self travelState];
  travelSections = [(EKTravelEngineHypothesis *)self travelSections];
  v20 = [(EKTravelEngineHypothesis *)v22 initWithTransportType:transportType conservativeDepartureDate:conservativeDepartureDate conservativeTravelTime:suggestedDepartureDate suggestedDepartureDate:aggressiveDepartureDate estimatedTravelTime:routeName aggressiveDepartureDate:supportsLiveTraffic aggressiveTravelTime:v7 routeName:v10 supportsLiveTraffic:v13 currentTrafficDensity:currentTrafficDensity trafficDensityDescription:trafficDensityDescription travelState:travelState travelSections:travelSections];

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInt:{-[EKTravelEngineHypothesis transportType](self, "transportType")}];
  [coderCopy encodeObject:v6 forKey:@"transportType"];

  conservativeDepartureDate = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  [coderCopy encodeObject:conservativeDepartureDate forKey:@"conservativeDepartureDate"];

  v8 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v9 = [v8 numberWithDouble:?];
  [coderCopy encodeObject:v9 forKey:@"conservativeTravelTime"];

  suggestedDepartureDate = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  [coderCopy encodeObject:suggestedDepartureDate forKey:@"suggestedDepartureDate"];

  v11 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v12 = [v11 numberWithDouble:?];
  [coderCopy encodeObject:v12 forKey:@"estimatedTravelTime"];

  aggressiveDepartureDate = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  [coderCopy encodeObject:aggressiveDepartureDate forKey:@"aggressiveDepartureDate"];

  v14 = MEMORY[0x1E696AD98];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v15 = [v14 numberWithDouble:?];
  [coderCopy encodeObject:v15 forKey:@"aggressiveTravelTime"];

  routeName = [(EKTravelEngineHypothesis *)self routeName];
  [coderCopy encodeObject:routeName forKey:@"routeName"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[EKTravelEngineHypothesis supportsLiveTraffic](self, "supportsLiveTraffic")}];
  [coderCopy encodeObject:v17 forKey:@"supportsLiveTraffic"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKTravelEngineHypothesis currentTrafficDensity](self, "currentTrafficDensity")}];
  [coderCopy encodeObject:v18 forKey:@"currentTrafficDensity"];

  trafficDensityDescription = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  [coderCopy encodeObject:trafficDensityDescription forKey:@"trafficDensityDescription"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EKTravelEngineHypothesis travelState](self, "travelState")}];
  [coderCopy encodeObject:v20 forKey:@"travelState"];

  travelSections = [(EKTravelEngineHypothesis *)self travelSections];
  [coderCopy encodeObject:travelSections forKey:@"travelSections"];
}

- (EKTravelEngineHypothesis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transportType"];
  intValue = [v4 intValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conservativeDepartureDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conservativeTravelTime"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedDepartureDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTravelTime"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveDepartureDate"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aggressiveTravelTime"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeName"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsLiveTraffic"];
  bOOLValue = [v18 BOOLValue];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentTrafficDensity"];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trafficDensityDescription"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"travelState"];
  integerValue = [v23 integerValue];

  v25 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"travelSections"];

  v26 = [(EKTravelEngineHypothesis *)self initWithTransportType:intValue conservativeDepartureDate:v5 conservativeTravelTime:v9 suggestedDepartureDate:v13 estimatedTravelTime:v17 aggressiveDepartureDate:bOOLValue aggressiveTravelTime:v8 routeName:v12 supportsLiveTraffic:v16 currentTrafficDensity:unsignedIntegerValue trafficDensityDescription:v22 travelState:integerValue travelSections:v25];
  return v26;
}

+ (id)syntheticHypothesisWithStartDate:(id)date conservativeTravelTime:(double)time estimatedTravelTime:(double)travelTime aggressiveTravelTime:(double)aggressiveTravelTime
{
  dateCopy = date;
  v10 = [EKTravelEngineHypothesis alloc];
  v11 = [dateCopy dateByAddingTimeInterval:-time];
  v12 = [dateCopy dateByAddingTimeInterval:-travelTime];
  v13 = [dateCopy dateByAddingTimeInterval:-aggressiveTravelTime];

  v14 = [(EKTravelEngineHypothesis *)v10 initWithTransportType:4 conservativeDepartureDate:v11 conservativeTravelTime:v12 suggestedDepartureDate:v13 estimatedTravelTime:0 aggressiveDepartureDate:0 aggressiveTravelTime:time routeName:travelTime supportsLiveTraffic:aggressiveTravelTime currentTrafficDensity:0 trafficDensityDescription:0 travelState:0];

  return v14;
}

@end