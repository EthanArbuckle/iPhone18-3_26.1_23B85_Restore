@interface CVACLLocation
- (CVACLLocation)initWithCLLocation:(id)a3 timestamp:(double)a4;
- (CVACLLocation)initWithDictionary:(id)a3;
- (id)debugDescription;
- (id)dictionary;
@end

@implementation CVACLLocation

- (CVACLLocation)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CVACLLocation;
  v5 = [(CVACLLocation *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"t"];
    [v6 doubleValue];
    v5->_timestamp = v7;

    v8 = [v4 objectForKeyedSubscript:@"ts"];
    [v8 doubleValue];
    v5->_timestampSince1970 = v9;

    v10 = [v4 objectForKeyedSubscript:@"lat"];
    [v10 doubleValue];
    v5->_latitude = v11;

    v12 = [v4 objectForKeyedSubscript:@"long"];
    [v12 doubleValue];
    v5->_longitude = v13;

    v14 = [v4 objectForKeyedSubscript:@"alt"];
    [v14 doubleValue];
    v5->_altitude = v15;

    v16 = [v4 objectForKeyedSubscript:@"h_acc"];
    [v16 doubleValue];
    v5->_horizontalAccuracy = v17;

    v18 = [v4 objectForKeyedSubscript:@"v_acc"];
    [v18 doubleValue];
    v5->_verticalAccuracy = v19;

    v20 = [v4 objectForKeyedSubscript:@"speed"];
    [v20 doubleValue];
    v5->_speed = v21;

    v22 = [v4 objectForKeyedSubscript:@"course"];
    [v22 doubleValue];
    v5->_course = v23;
  }

  return v5;
}

- (CVACLLocation)initWithCLLocation:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = CVACLLocation;
  v7 = [(CVACLLocation *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_timestamp = a4;
    v9 = [v6 timestamp];
    [v9 timeIntervalSince1970];
    v8->_timestampSince1970 = v10;

    [v6 coordinate];
    v8->_latitude = v11;
    [v6 coordinate];
    v8->_longitude = v12;
    [v6 altitude];
    v8->_altitude = v13;
    [v6 horizontalAccuracy];
    v8->_horizontalAccuracy = v14;
    [v6 verticalAccuracy];
    v8->_verticalAccuracy = v15;
    [v6 speed];
    v8->_speed = v16;
    [v6 course];
    v8->_course = v17;
  }

  return v8;
}

- (id)dictionary
{
  v16[9] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_timestamp, @"t"}];
  v16[0] = v3;
  v15[1] = @"ts";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestampSince1970];
  v16[1] = v4;
  v15[2] = @"lat";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  v16[2] = v5;
  v15[3] = @"long";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  v16[3] = v6;
  v15[4] = @"alt";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_altitude];
  v16[4] = v7;
  v15[5] = @"h_acc";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  v16[5] = v8;
  v15[6] = @"v_acc";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_verticalAccuracy];
  v16[6] = v9;
  v15[7] = @"speed";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_speed];
  v16[7] = v10;
  v15[8] = @"course";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_course];
  v16[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CVACLLocation *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end