@interface WFAddressAction
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFAddressAction

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = [(WFAddressAction *)self parameterValueForKey:@"WFAddressLine1" ofClass:objc_opt_class()];
  v7 = [(WFAddressAction *)self parameterValueForKey:@"WFAddressLine2" ofClass:objc_opt_class()];
  v8 = [(WFAddressAction *)self parameterValueForKey:@"WFCity" ofClass:objc_opt_class()];
  v9 = [(WFAddressAction *)self parameterValueForKey:@"WFState" ofClass:objc_opt_class()];
  v10 = [(WFAddressAction *)self parameterValueForKey:@"WFCountry" ofClass:objc_opt_class()];
  v11 = [(WFAddressAction *)self parameterValueForKey:@"WFPostalCode" ofClass:objc_opt_class()];
  v12 = [MEMORY[0x277CBEB18] array];
  if ([v6 length])
  {
    [v12 addObject:v6];
  }

  if ([v7 length])
  {
    [v12 addObject:v7];
  }

  if ([v12 count])
  {
    v13 = [v12 componentsJoinedByString:@"\n"];
  }

  else
  {
    v13 = 0;
  }

  if ([v13 length] || objc_msgSend(v8, "length") || objc_msgSend(v9, "length") || objc_msgSend(v11, "length") || objc_msgSend(v10, "length"))
  {
    v14 = [(WFAddressAction *)self output];
    v15 = [MEMORY[0x277CFC528] streetAddressWithStreet:v13 subLocality:0 city:v8 subAdministrativeArea:0 state:v9 postalCode:v11 country:v10 isoCountryCode:0 label:0];
    [v14 addObject:v15];
  }

  else
  {
    v19 = *MEMORY[0x277D7CB30];
    v20 = MEMORY[0x277CCA9B8];
    v22[0] = *MEMORY[0x277CCA470];
    v21 = WFLocalizedString(@"No Address");
    v23[0] = v21;
    v22[1] = *MEMORY[0x277CCA450];
    v18 = WFLocalizedString(@"Please enter a valid address into the Street Address action.");
    v23[1] = v18;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    *a4 = [v20 errorWithDomain:v19 code:5 userInfo:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end