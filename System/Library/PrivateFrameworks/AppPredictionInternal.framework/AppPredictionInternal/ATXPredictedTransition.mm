@interface ATXPredictedTransition
- (ATXPredictedTransition)initWithDate:(id)date loi:(id)loi;
- (id)description;
- (id)transitionArrayForDate:(id)date;
@end

@implementation ATXPredictedTransition

- (id)transitionArrayForDate:(id)date
{
  v23[3] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  date = [(ATXPredictedTransition *)self date];
  [date timeIntervalSinceDate:dateCopy];
  v7 = v6;

  locationOfInterestUUIDKey = [MEMORY[0x277CFE338] locationOfInterestUUIDKey];
  v22[0] = locationOfInterestUUIDKey;
  v9 = [(ATXPredictedTransition *)self loi];
  uuid = [v9 uuid];
  v23[0] = uuid;
  locationOfInterestTypeKey = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
  v22[1] = locationOfInterestTypeKey;
  v12 = MEMORY[0x277CCABB0];
  v13 = [(ATXPredictedTransition *)self loi];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "type")}];
  v23[1] = v14;
  transitionWithinTimeIntervalKey = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v22[2] = transitionWithinTimeIntervalKey;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v23[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v21 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (ATXPredictedTransition)initWithDate:(id)date loi:(id)loi
{
  dateCopy = date;
  loiCopy = loi;
  v9 = loiCopy;
  selfCopy = 0;
  if (dateCopy && loiCopy)
  {
    if ([loiCopy type] && objc_msgSend(v9, "type") != 1)
    {
      selfCopy = 0;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = ATXPredictedTransition;
      v11 = [(ATXPredictedTransition *)&v14 init];
      p_isa = &v11->super.isa;
      if (v11)
      {
        objc_storeStrong(&v11->_date, date);
        objc_storeStrong(p_isa + 2, loi);
      }

      self = p_isa;
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (id)description
{
  v3 = [MEMORY[0x277D41BF8] stringForLOIType:{-[ATXLocationOfInterest type](self->_loi, "type")}];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transition to %@ at %@", v3, self->_date];

  return v4;
}

@end