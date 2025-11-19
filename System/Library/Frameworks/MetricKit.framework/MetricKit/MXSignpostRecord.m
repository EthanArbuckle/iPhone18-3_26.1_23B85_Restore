@interface MXSignpostRecord
- (MXSignpostRecord)initWithCoder:(id)a3;
- (MXSignpostRecord)initWithSubSystem:(id)a3 category:(id)a4 name:(id)a5 beginTimeStamp:(id)a6 endTimeStamp:(id)a7 duration:(id)a8 isInterval:(BOOL)a9;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXSignpostRecord

- (MXSignpostRecord)initWithSubSystem:(id)a3 category:(id)a4 name:(id)a5 beginTimeStamp:(id)a6 endTimeStamp:(id)a7 duration:(id)a8 isInterval:(BOOL)a9
{
  v25 = a3;
  v24 = a4;
  v16 = a5;
  v17 = a6;
  v23 = a7;
  v22 = a8;
  v26.receiver = self;
  v26.super_class = MXSignpostRecord;
  v18 = [(MXSignpostRecord *)&v26 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

  v20 = 0;
  if (v25 && v24 && v16 && v17)
  {
    objc_storeStrong(&v18->_subsystem, a3);
    objc_storeStrong(&v19->_category, a4);
    objc_storeStrong(&v19->_name, a5);
    objc_storeStrong(&v19->_beginTimeStamp, a6);
    objc_storeStrong(&v19->_endTimeStamp, a7);
    objc_storeStrong(&v19->_duration, a8);
    v19->_isInterval = a9;
LABEL_7:
    v20 = v19;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  subsystem = self->_subsystem;
  v5 = a3;
  [v5 encodeObject:subsystem forKey:@"subsystem"];
  [v5 encodeObject:self->_category forKey:@"category"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_beginTimeStamp forKey:@"beginTimeStamp"];
  [v5 encodeObject:self->_endTimeStamp forKey:@"endTimeStamp"];
  [v5 encodeObject:self->_duration forKey:@"duration"];
  [v5 encodeBool:self->_isInterval forKey:@"isInterval"];
}

- (MXSignpostRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MXSignpostRecord;
  v5 = [(MXSignpostRecord *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subsystem"];
    subsystem = v5->_subsystem;
    v5->_subsystem = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beginTimeStamp"];
    beginTimeStamp = v5->_beginTimeStamp;
    v5->_beginTimeStamp = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTimeStamp"];
    endTimeStamp = v5->_endTimeStamp;
    v5->_endTimeStamp = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v16;

    v5->_isInterval = [v4 decodeBoolForKey:@"isInterval"];
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
  v2 = [(MXSignpostRecord *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end