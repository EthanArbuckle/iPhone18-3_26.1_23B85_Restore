@interface ATXPredictedTransition
- (ATXPredictedTransition)initWithDate:(id)a3 loi:(id)a4;
- (id)description;
- (id)transitionArrayForDate:(id)a3;
@end

@implementation ATXPredictedTransition

- (id)transitionArrayForDate:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXPredictedTransition *)self date];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;

  v8 = [MEMORY[0x277CFE338] locationOfInterestUUIDKey];
  v22[0] = v8;
  v9 = [(ATXPredictedTransition *)self loi];
  v10 = [v9 uuid];
  v23[0] = v10;
  v11 = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
  v22[1] = v11;
  v12 = MEMORY[0x277CCABB0];
  v13 = [(ATXPredictedTransition *)self loi];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "type")}];
  v23[1] = v14;
  v15 = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v22[2] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v23[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v21 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (ATXPredictedTransition)initWithDate:(id)a3 loi:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    if ([v8 type] && objc_msgSend(v9, "type") != 1)
    {
      v10 = 0;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = ATXPredictedTransition;
      v11 = [(ATXPredictedTransition *)&v14 init];
      p_isa = &v11->super.isa;
      if (v11)
      {
        objc_storeStrong(&v11->_date, a3);
        objc_storeStrong(p_isa + 2, a4);
      }

      self = p_isa;
      v10 = self;
    }
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277D41BF8] stringForLOIType:{-[ATXLocationOfInterest type](self->_loi, "type")}];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transition to %@ at %@", v3, self->_date];

  return v4;
}

@end