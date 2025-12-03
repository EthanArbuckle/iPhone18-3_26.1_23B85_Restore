@interface MXSignpostRecord
- (MXSignpostRecord)initWithCoder:(id)coder;
- (MXSignpostRecord)initWithSubSystem:(id)system category:(id)category name:(id)name beginTimeStamp:(id)stamp endTimeStamp:(id)timeStamp duration:(id)duration isInterval:(BOOL)interval;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXSignpostRecord

- (MXSignpostRecord)initWithSubSystem:(id)system category:(id)category name:(id)name beginTimeStamp:(id)stamp endTimeStamp:(id)timeStamp duration:(id)duration isInterval:(BOOL)interval
{
  systemCopy = system;
  categoryCopy = category;
  nameCopy = name;
  stampCopy = stamp;
  timeStampCopy = timeStamp;
  durationCopy = duration;
  v26.receiver = self;
  v26.super_class = MXSignpostRecord;
  v18 = [(MXSignpostRecord *)&v26 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

  v20 = 0;
  if (systemCopy && categoryCopy && nameCopy && stampCopy)
  {
    objc_storeStrong(&v18->_subsystem, system);
    objc_storeStrong(&v19->_category, category);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_beginTimeStamp, stamp);
    objc_storeStrong(&v19->_endTimeStamp, timeStamp);
    objc_storeStrong(&v19->_duration, duration);
    v19->_isInterval = interval;
LABEL_7:
    v20 = v19;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  subsystem = self->_subsystem;
  coderCopy = coder;
  [coderCopy encodeObject:subsystem forKey:@"subsystem"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_beginTimeStamp forKey:@"beginTimeStamp"];
  [coderCopy encodeObject:self->_endTimeStamp forKey:@"endTimeStamp"];
  [coderCopy encodeObject:self->_duration forKey:@"duration"];
  [coderCopy encodeBool:self->_isInterval forKey:@"isInterval"];
}

- (MXSignpostRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MXSignpostRecord;
  v5 = [(MXSignpostRecord *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subsystem"];
    subsystem = v5->_subsystem;
    v5->_subsystem = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beginTimeStamp"];
    beginTimeStamp = v5->_beginTimeStamp;
    v5->_beginTimeStamp = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTimeStamp"];
    endTimeStamp = v5->_endTimeStamp;
    v5->_endTimeStamp = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v16;

    v5->_isInterval = [coderCopy decodeBoolForKey:@"isInterval"];
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v6 setUnitOptions:1];
  v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:v7];

  [v6 setUnitStyle:2];
  subsystem = self->_subsystem;
  if (subsystem)
  {
    [v3 setObject:subsystem forKey:@"subsystem"];
  }

  category = self->_category;
  if (category)
  {
    [v3 setObject:category forKey:@"category"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if (self->_beginTimeStamp)
  {
    v11 = [v4 stringFromDate:?];
    [v3 setObject:v11 forKey:@"beginTimeStamp"];
  }

  if (self->_endTimeStamp)
  {
    v12 = [v4 stringFromDate:?];
    [v3 setObject:v12 forKey:@"endTimeStamp"];
  }

  if (self->_duration)
  {
    v13 = [v6 stringFromMeasurement:?];
    [v3 setObject:v13 forKey:@"duration"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInterval];
  [v3 setObject:v14 forKey:@"isInterval"];

  return v3;
}

- (NSData)JSONRepresentation
{
  toDictionary = [(MXSignpostRecord *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:toDictionary])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:toDictionary options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end