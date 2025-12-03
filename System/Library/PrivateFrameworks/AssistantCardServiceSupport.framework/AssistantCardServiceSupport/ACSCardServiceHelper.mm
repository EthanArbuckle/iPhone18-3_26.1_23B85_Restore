@interface ACSCardServiceHelper
+ (id)formattedDateTimeStringFromDate:(id)date;
+ (id)formattedDateTimeStringFromDateComponents:(id)components;
+ (id)rowCardSectionFromLeadingText:(id)text trailingText:(id)trailingText;
+ (void)addParameterToSection:(id)section selectorStrings:(id)strings class:(Class)class;
@end

@implementation ACSCardServiceHelper

+ (id)rowCardSectionFromLeadingText:(id)text trailingText:(id)trailingText
{
  v5 = MEMORY[0x277D4C5A8];
  trailingTextCopy = trailingText;
  textCopy = text;
  acs_uniquelyIdentifiedCardSection = [v5 acs_uniquelyIdentifiedCardSection];
  v9 = [MEMORY[0x277D4C598] textWithString:textCopy];

  [acs_uniquelyIdentifiedCardSection setLeadingText:v9];
  v10 = [MEMORY[0x277D4C598] textWithString:trailingTextCopy];

  [acs_uniquelyIdentifiedCardSection setTrailingText:v10];

  return acs_uniquelyIdentifiedCardSection;
}

+ (id)formattedDateTimeStringFromDateComponents:(id)components
{
  v3 = MEMORY[0x277CBEA80];
  componentsCopy = components;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar dateFromComponents:componentsCopy];

  v7 = [objc_opt_class() formattedDateTimeStringFromDate:v6];

  return v7;
}

+ (id)formattedDateTimeStringFromDate:(id)date
{
  v3 = formattedDateTimeStringFromDate__once;
  dateCopy = date;
  if (v3 != -1)
  {
    +[ACSCardServiceHelper formattedDateTimeStringFromDate:];
  }

  v5 = [formattedDateTimeStringFromDate__acsDateFormatter stringFromDate:dateCopy];

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

+ (void)addParameterToSection:(id)section selectorStrings:(id)strings class:(Class)class
{
  sectionCopy = section;
  v11 = [strings componentsJoinedByString:@"."];
  v8 = MEMORY[0x277CD3E50];
  v9 = [MEMORY[0x277CCACA8] stringWithString:v11];
  v10 = [v8 parameterForClass:class keyPath:v9];

  [sectionCopy acs_addParameter:v10];
}

@end