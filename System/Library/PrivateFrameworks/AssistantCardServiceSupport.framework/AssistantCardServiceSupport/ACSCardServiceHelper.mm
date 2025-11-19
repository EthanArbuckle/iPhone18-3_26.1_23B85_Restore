@interface ACSCardServiceHelper
+ (id)formattedDateTimeStringFromDate:(id)a3;
+ (id)formattedDateTimeStringFromDateComponents:(id)a3;
+ (id)rowCardSectionFromLeadingText:(id)a3 trailingText:(id)a4;
+ (void)addParameterToSection:(id)a3 selectorStrings:(id)a4 class:(Class)a5;
@end

@implementation ACSCardServiceHelper

+ (id)rowCardSectionFromLeadingText:(id)a3 trailingText:(id)a4
{
  v5 = MEMORY[0x277D4C5A8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 acs_uniquelyIdentifiedCardSection];
  v9 = [MEMORY[0x277D4C598] textWithString:v7];

  [v8 setLeadingText:v9];
  v10 = [MEMORY[0x277D4C598] textWithString:v6];

  [v8 setTrailingText:v10];

  return v8;
}

+ (id)formattedDateTimeStringFromDateComponents:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  v7 = [objc_opt_class() formattedDateTimeStringFromDate:v6];

  return v7;
}

+ (id)formattedDateTimeStringFromDate:(id)a3
{
  v3 = formattedDateTimeStringFromDate__once;
  v4 = a3;
  if (v3 != -1)
  {
    +[ACSCardServiceHelper formattedDateTimeStringFromDate:];
  }

  v5 = [formattedDateTimeStringFromDate__acsDateFormatter stringFromDate:v4];

  return v5;
}

uint64_t __56__ACSCardServiceHelper_formattedDateTimeStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = formattedDateTimeStringFromDate__acsDateFormatter;
  formattedDateTimeStringFromDate__acsDateFormatter = v0;

  [formattedDateTimeStringFromDate__acsDateFormatter setDateStyle:1];
  v2 = formattedDateTimeStringFromDate__acsDateFormatter;

  return [v2 setTimeStyle:1];
}

+ (void)addParameterToSection:(id)a3 selectorStrings:(id)a4 class:(Class)a5
{
  v7 = a3;
  v11 = [a4 componentsJoinedByString:@"."];
  v8 = MEMORY[0x277CD3E50];
  v9 = [MEMORY[0x277CCACA8] stringWithString:v11];
  v10 = [v8 parameterForClass:a5 keyPath:v9];

  [v7 acs_addParameter:v10];
}

@end