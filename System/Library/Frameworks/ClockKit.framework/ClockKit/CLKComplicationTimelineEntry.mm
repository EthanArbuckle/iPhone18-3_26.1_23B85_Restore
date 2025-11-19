@interface CLKComplicationTimelineEntry
+ (CLKComplicationTimelineEntry)entryWithDate:(NSDate *)date complicationTemplate:(CLKComplicationTemplate *)complicationTemplate timelineAnimationGroup:(NSString *)timelineAnimationGroup;
- (BOOL)tl_validate:(id *)a3;
- (BOOL)validateComplicationFamily:(int64_t)a3;
- (BOOL)validateWithError:(id *)a3;
- (CLKComplicationTimelineEntry)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)finalizedCopy;
- (void)encodeWithCoder:(id)a3;
- (void)finalize;
@end

@implementation CLKComplicationTimelineEntry

+ (CLKComplicationTimelineEntry)entryWithDate:(NSDate *)date complicationTemplate:(CLKComplicationTemplate *)complicationTemplate timelineAnimationGroup:(NSString *)timelineAnimationGroup
{
  v8 = timelineAnimationGroup;
  v9 = complicationTemplate;
  v10 = date;
  v11 = objc_alloc_init(a1);
  [v11 setDate:v10];

  [v11 setComplicationTemplate:v9];
  [v11 setTimelineAnimationGroup:v8];

  return v11;
}

- (BOOL)validateComplicationFamily:(int64_t)a3
{
  p_complicationTemplate = &self->_complicationTemplate;
  v5 = [(CLKComplicationTemplate *)self->_complicationTemplate isCompatibleWithFamily:?];
  if (!v5)
  {
    v6 = CLKLoggingObjectForDomain(10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(CLKComplicationTimelineEntry *)a3 validateComplicationFamily:v6];
    }
  }

  return v5;
}

- (BOOL)validateWithError:(id *)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x277D85DE8];
  if (self->_date)
  {
    complicationTemplate = self->_complicationTemplate;
    if (complicationTemplate)
    {
      LOBYTE(v3) = [(CLKComplicationTemplate *)complicationTemplate validateWithError:a3];
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
    LOBYTE(v3) = 0;
    goto LABEL_13;
  }

  v9 = CLKLoggingObjectForDomain(10);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [(CLKComplicationTimelineEntry *)v5 validateWithError:v9];
  }

  if (v3)
  {
    if (!*v3)
    {
      v10 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = v5;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *v3 = [v10 errorWithDomain:@"CLKComplicationTimelineErrorDomain" code:1 userInfo:v11];
    }

    goto LABEL_12;
  }

LABEL_13:

  return v3;
}

- (void)finalize
{
  if (!self->_finalized)
  {
    v3 = [(CLKComplicationTemplate *)self->_complicationTemplate finalizedCopyClass];
    complicationTemplate = self->_complicationTemplate;
    if (v3)
    {
      v5 = [(CLKComplicationTemplate *)complicationTemplate finalizedCopy];
      v6 = self->_complicationTemplate;
      self->_complicationTemplate = v5;
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
    v2 = self;
  }

  else
  {
    v2 = [(CLKComplicationTimelineEntry *)self copy];
    [(CLKComplicationTimelineEntry *)v2 finalize];
  }

  return v2;
}

- (BOOL)tl_validate:(id *)a3
{
  v4 = [(CLKComplicationTimelineEntry *)self validateWithError:?];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLKComplicationEntryError" code:400 userInfo:&unk_284A350C8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_complicationTemplate forKey:@"tmpl"];
  [v5 encodeObject:self->_timelineAnimationGroup forKey:@"anim"];
  [v5 encodeBool:self->_finalized forKey:@"finalized"];
}

- (CLKComplicationTimelineEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLKComplicationTimelineEntry *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tmpl"];
    complicationTemplate = v5->_complicationTemplate;
    v5->_complicationTemplate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anim"];
    timelineAnimationGroup = v5->_timelineAnimationGroup;
    v5->_timelineAnimationGroup = v10;

    v5->_finalized = [v4 decodeBoolForKey:@"finalized"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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