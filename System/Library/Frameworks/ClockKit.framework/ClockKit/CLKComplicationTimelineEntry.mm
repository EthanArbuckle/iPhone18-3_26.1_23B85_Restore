@interface CLKComplicationTimelineEntry
+ (CLKComplicationTimelineEntry)entryWithDate:(NSDate *)date complicationTemplate:(CLKComplicationTemplate *)complicationTemplate timelineAnimationGroup:(NSString *)timelineAnimationGroup;
- (BOOL)tl_validate:(id *)tl_validate;
- (BOOL)validateComplicationFamily:(int64_t)family;
- (BOOL)validateWithError:(id *)error;
- (CLKComplicationTimelineEntry)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)finalizedCopy;
- (void)encodeWithCoder:(id)coder;
- (void)finalize;
@end

@implementation CLKComplicationTimelineEntry

+ (CLKComplicationTimelineEntry)entryWithDate:(NSDate *)date complicationTemplate:(CLKComplicationTemplate *)complicationTemplate timelineAnimationGroup:(NSString *)timelineAnimationGroup
{
  v8 = timelineAnimationGroup;
  v9 = complicationTemplate;
  v10 = date;
  v11 = objc_alloc_init(self);
  [v11 setDate:v10];

  [v11 setComplicationTemplate:v9];
  [v11 setTimelineAnimationGroup:v8];

  return v11;
}

- (BOOL)validateComplicationFamily:(int64_t)family
{
  p_complicationTemplate = &self->_complicationTemplate;
  v5 = [(CLKComplicationTemplate *)self->_complicationTemplate isCompatibleWithFamily:?];
  if (!v5)
  {
    v6 = CLKLoggingObjectForDomain(10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(CLKComplicationTimelineEntry *)family validateComplicationFamily:v6];
    }
  }

  return v5;
}

- (BOOL)validateWithError:(id *)error
{
  errorCopy = error;
  v14[1] = *MEMORY[0x277D85DE8];
  if (self->_date)
  {
    complicationTemplate = self->_complicationTemplate;
    if (complicationTemplate)
    {
      LOBYTE(errorCopy) = [(CLKComplicationTemplate *)complicationTemplate validateWithError:error];
      v5 = 0;
      goto LABEL_13;
    }

    v6 = @"complicationTemplate";
  }

  else
  {
    v6 = @"date";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v5 = [v7 stringWithFormat:@"Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", v6, v8, objc_opt_class()];
  if (!v5)
  {
LABEL_12:
    LOBYTE(errorCopy) = 0;
    goto LABEL_13;
  }

  v9 = CLKLoggingObjectForDomain(10);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [(CLKComplicationTimelineEntry *)v5 validateWithError:v9];
  }

  if (errorCopy)
  {
    if (!*errorCopy)
    {
      v10 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = v5;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *errorCopy = [v10 errorWithDomain:@"CLKComplicationTimelineErrorDomain" code:1 userInfo:v11];
    }

    goto LABEL_12;
  }

LABEL_13:

  return errorCopy;
}

- (void)finalize
{
  if (!self->_finalized)
  {
    finalizedCopyClass = [(CLKComplicationTemplate *)self->_complicationTemplate finalizedCopyClass];
    complicationTemplate = self->_complicationTemplate;
    if (finalizedCopyClass)
    {
      finalizedCopy = [(CLKComplicationTemplate *)complicationTemplate finalizedCopy];
      v6 = self->_complicationTemplate;
      self->_complicationTemplate = finalizedCopy;
    }

    else
    {
      [(CLKComplicationTemplate *)complicationTemplate finalize];
    }

    self->_finalized = 1;
  }
}

- (id)finalizedCopy
{
  if (self->_finalized)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(CLKComplicationTimelineEntry *)self copy];
    [(CLKComplicationTimelineEntry *)selfCopy finalize];
  }

  return selfCopy;
}

- (BOOL)tl_validate:(id *)tl_validate
{
  v4 = [(CLKComplicationTimelineEntry *)self validateWithError:?];
  v5 = v4;
  if (tl_validate && !v4)
  {
    *tl_validate = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLKComplicationEntryError" code:400 userInfo:&unk_284A350C8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_complicationTemplate forKey:@"tmpl"];
  [coderCopy encodeObject:self->_timelineAnimationGroup forKey:@"anim"];
  [coderCopy encodeBool:self->_finalized forKey:@"finalized"];
}

- (CLKComplicationTimelineEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CLKComplicationTimelineEntry *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tmpl"];
    complicationTemplate = v5->_complicationTemplate;
    v5->_complicationTemplate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anim"];
    timelineAnimationGroup = v5->_timelineAnimationGroup;
    v5->_timelineAnimationGroup = v10;

    v5->_finalized = [coderCopy decodeBoolForKey:@"finalized"];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CLKComplicationTimelineEntry;
  v4 = [(CLKComplicationTimelineEntry *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ date = %@, template = %@, animationGroup = %@", v4, self->_date, self->_complicationTemplate, self->_timelineAnimationGroup];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
    [v5 setDate:self->_date];
    [v5 setComplicationTemplate:self->_complicationTemplate];
    [v5 setTimelineAnimationGroup:self->_timelineAnimationGroup];
    return v5;
  }
}

- (void)validateComplicationFamily:(NSObject *)a3 .cold.1(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = CLKStringForComplicationFamily(a1);
  v6 = CLKStringForComplicationFamily([*a2 compatibleFamily]);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&dword_23702D000, a3, OS_LOG_TYPE_FAULT, "Data handler called with incompatible template for complication family. Expected template for '%@', but received one for '%@'.", &v7, 0x16u);
}

- (void)validateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end