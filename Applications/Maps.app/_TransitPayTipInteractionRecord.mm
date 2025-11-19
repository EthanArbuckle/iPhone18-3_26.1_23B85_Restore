@interface _TransitPayTipInteractionRecord
- (_TransitPayTipInteractionRecord)initWithCoder:(id)a3;
- (_TransitPayTipInteractionRecord)initWithTipType:(int)a3 isTourist:(BOOL)a4;
- (id)incrementDisplayCountForSink:(int)a3;
- (int64_t)displayCountForSink:(int)a3;
- (void)_resetTipDisplayCountForSink:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)userDismissedInSink:(int)a3;
@end

@implementation _TransitPayTipInteractionRecord

- (void)encodeWithCoder:(id)a3
{
  dismissalDate = self->_dismissalDate;
  v5 = a3;
  [v5 encodeObject:dismissalDate forKey:@"dismissalDate"];
  [v5 encodeObject:self->_lastDisplayed forKey:@"lastDisplayed"];
  [v5 encodeBool:self->_isTourist forKey:@"isTourist"];
  [v5 encodeInt32:self->_tipType forKey:@"tipType"];
  v6 = [(NSMutableDictionary *)self->_displayCountForSinks copy];
  [v5 encodeObject:v6 forKey:@"displayCountForSinks"];
}

- (_TransitPayTipInteractionRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _TransitPayTipInteractionRecord;
  v5 = [(_TransitPayTipInteractionRecord *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dismissalDate"];
    dismissalDate = v5->_dismissalDate;
    v5->_dismissalDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastDisplayed"];
    lastDisplayed = v5->_lastDisplayed;
    v5->_lastDisplayed = v8;

    v5->_isTourist = [v4 decodeBoolForKey:@"isTourist"];
    v5->_tipType = [v4 decodeInt32ForKey:@"tipType"];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"displayCountForSinks"];
    v14 = [v13 mutableCopy];
    displayCountForSinks = v5->_displayCountForSinks;
    v5->_displayCountForSinks = v14;
  }

  return v5;
}

- (void)_resetTipDisplayCountForSink:(int)a3
{
  displayCountForSinks = self->_displayCountForSinks;
  v5 = [NSNumber numberWithInt:*&a3];
  v6 = [v5 stringValue];

  [(NSMutableDictionary *)displayCountForSinks setObject:&off_1016E9308 forKeyedSubscript:v6];
  lastDisplayed = self->_lastDisplayed;
  self->_lastDisplayed = 0;
}

- (void)userDismissedInSink:(int)a3
{
  v3 = *&a3;
  v5 = +[NSDate now];
  dismissalDate = self->_dismissalDate;
  self->_dismissalDate = v5;

  [(_TransitPayTipInteractionRecord *)self _resetTipDisplayCountForSink:v3];
}

- (int64_t)displayCountForSink:(int)a3
{
  v5 = [NSNumber numberWithInt:?];
  v6 = [v5 stringValue];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_displayCountForSinks objectForKey:v6];
    if (!v7)
    {
      v8 = sub_10003D020();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"UNKNOWN SINK TYPE";
        if (a3 == 4)
        {
          v9 = @"SinkTypeRoutePlanning";
        }

        if (a3 == 2)
        {
          v9 = @"SinkTypeMapsHome";
        }

        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ did not have a display count, setting to 0", &v12, 0xCu);
      }

      v7 = &off_1016E9308;
    }

    v10 = [v7 intValue];
  }

  else
  {
    v7 = sub_10003D020();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Sink type key is null, this should never happen", &v12, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)incrementDisplayCountForSink:(int)a3
{
  v3 = *&a3;
  v5 = [[NSNumber alloc] initWithInteger:{-[_TransitPayTipInteractionRecord displayCountForSink:](self, "displayCountForSink:") + 1}];
  v6 = [NSNumber numberWithInt:v3];
  v7 = [v6 stringValue];

  [(NSMutableDictionary *)self->_displayCountForSinks setObject:v5 forKeyedSubscript:v7];
  v8 = +[NSDate now];
  lastDisplayed = self->_lastDisplayed;
  self->_lastDisplayed = v8;

  return v5;
}

- (_TransitPayTipInteractionRecord)initWithTipType:(int)a3 isTourist:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = _TransitPayTipInteractionRecord;
  v6 = [(_TransitPayTipInteractionRecord *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_isTourist = a4;
    v6->_tipType = a3;
    v8 = objc_alloc_init(NSMutableDictionary);
    displayCountForSinks = v7->_displayCountForSinks;
    v7->_displayCountForSinks = v8;

    dismissalDate = v7->_dismissalDate;
    v7->_dismissalDate = 0;

    lastDisplayed = v7->_lastDisplayed;
    v7->_lastDisplayed = 0;
  }

  return v7;
}

@end