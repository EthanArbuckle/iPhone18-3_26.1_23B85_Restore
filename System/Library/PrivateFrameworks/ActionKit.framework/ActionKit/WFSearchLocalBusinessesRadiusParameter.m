@interface WFSearchLocalBusinessesRadiusParameter
- (id)defaultSerializedRepresentation;
@end

@implementation WFSearchLocalBusinessesRadiusParameter

- (id)defaultSerializedRepresentation
{
  if ([(WFSearchLocalBusinessesRadiusParameter *)self shouldUseMetricSystem])
  {
    [MEMORY[0x277CCABB0] numberWithDouble:1.5];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInteger:1];
  }
  v3 = ;
  v4 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v3 numberStyle:1];
  v5 = [objc_alloc(MEMORY[0x277D7C6A8]) initWithValue:v4];
  if ([(WFSearchLocalBusinessesRadiusParameter *)self shouldUseMetricSystem])
  {
    [MEMORY[0x277CCAE20] kilometers];
  }

  else
  {
    [MEMORY[0x277CCAE20] miles];
  }
  v6 = ;
  v7 = objc_alloc(MEMORY[0x277D7C788]);
  v8 = [v6 symbol];
  v9 = [v7 initWithMagnitudeState:v5 unitString:v8];

  v10 = [v9 serializedRepresentation];

  return v10;
}

@end