@interface _TransitPayTipInteractionRecord
- (_TransitPayTipInteractionRecord)initWithCoder:(id)coder;
- (_TransitPayTipInteractionRecord)initWithTipType:(int)type isTourist:(BOOL)tourist;
- (id)incrementDisplayCountForSink:(int)sink;
- (int64_t)displayCountForSink:(int)sink;
- (void)_resetTipDisplayCountForSink:(int)sink;
- (void)encodeWithCoder:(id)coder;
- (void)userDismissedInSink:(int)sink;
@end

@implementation _TransitPayTipInteractionRecord

- (void)encodeWithCoder:(id)coder
{
  dismissalDate = self->_dismissalDate;
  coderCopy = coder;
  [coderCopy encodeObject:dismissalDate forKey:@"dismissalDate"];
  [coderCopy encodeObject:self->_lastDisplayed forKey:@"lastDisplayed"];
  [coderCopy encodeBool:self->_isTourist forKey:@"isTourist"];
  [coderCopy encodeInt32:self->_tipType forKey:@"tipType"];
  v6 = [(NSMutableDictionary *)self->_displayCountForSinks copy];
  [coderCopy encodeObject:v6 forKey:@"displayCountForSinks"];
}

- (_TransitPayTipInteractionRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _TransitPayTipInteractionRecord;
  v5 = [(_TransitPayTipInteractionRecord *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dismissalDate"];
    dismissalDate = v5->_dismissalDate;
    v5->_dismissalDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastDisplayed"];
    lastDisplayed = v5->_lastDisplayed;
    v5->_lastDisplayed = v8;

    v5->_isTourist = [coderCopy decodeBoolForKey:@"isTourist"];
    v5->_tipType = [coderCopy decodeInt32ForKey:@"tipType"];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"displayCountForSinks"];
    v14 = [v13 mutableCopy];
    displayCountForSinks = v5->_displayCountForSinks;
    v5->_displayCountForSinks = v14;
  }

  return v5;
}

- (void)_resetTipDisplayCountForSink:(int)sink
{
  displayCountForSinks = self->_displayCountForSinks;
  v5 = [NSNumber numberWithInt:*&sink];
  stringValue = [v5 stringValue];

  [(NSMutableDictionary *)displayCountForSinks setObject:&off_1016E9308 forKeyedSubscript:stringValue];
  lastDisplayed = self->_lastDisplayed;
  self->_lastDisplayed = 0;
}

- (void)userDismissedInSink:(int)sink
{
  v3 = *&sink;
  v5 = +[NSDate now];
  dismissalDate = self->_dismissalDate;
  self->_dismissalDate = v5;

  [(_TransitPayTipInteractionRecord *)self _resetTipDisplayCountForSink:v3];
}

- (int64_t)displayCountForSink:(int)sink
{
  v5 = [NSNumber numberWithInt:?];
  stringValue = [v5 stringValue];

  if (stringValue)
  {
    v7 = [(NSMutableDictionary *)self->_displayCountForSinks objectForKey:stringValue];
    if (!v7)
    {
      v8 = sub_10003D020();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"UNKNOWN SINK TYPE";
        if (sink == 4)
        {
          v9 = @"SinkTypeRoutePlanning";
        }

        if (sink == 2)
        {
          v9 = @"SinkTypeMapsHome";
        }

        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ did not have a display count, setting to 0", &v12, 0xCu);
      }

      v7 = &off_1016E9308;
    }

    intValue = [v7 intValue];
  }

  else
  {
    v7 = sub_10003D020();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Sink type key is null, this should never happen", &v12, 2u);
    }

    intValue = 0;
  }

  return intValue;
}

- (id)incrementDisplayCountForSink:(int)sink
{
  v3 = *&sink;
  v5 = [[NSNumber alloc] initWithInteger:{-[_TransitPayTipInteractionRecord displayCountForSink:](self, "displayCountForSink:") + 1}];
  v6 = [NSNumber numberWithInt:v3];
  stringValue = [v6 stringValue];

  [(NSMutableDictionary *)self->_displayCountForSinks setObject:v5 forKeyedSubscript:stringValue];
  v8 = +[NSDate now];
  lastDisplayed = self->_lastDisplayed;
  self->_lastDisplayed = v8;

  return v5;
}

- (_TransitPayTipInteractionRecord)initWithTipType:(int)type isTourist:(BOOL)tourist
{
  v13.receiver = self;
  v13.super_class = _TransitPayTipInteractionRecord;
  v6 = [(_TransitPayTipInteractionRecord *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_isTourist = tourist;
    v6->_tipType = type;
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