@interface CMAnomalyEvent
- (CMAnomalyEvent)initWithCoder:(id)coder;
- (CMAnomalyEvent)initWithIdentifier:(unint64_t)identifier absoluteTimestamp:(double)timestamp updateTimestamp:(double)updateTimestamp state:(int64_t)state response:(int64_t)response resolution:(int64_t)resolution sosState:(int64_t)sosState operatingMode:(int64_t)self0;
- (CMAnomalyEvent)initWithIdentifier:(unint64_t)identifier absoluteTimestamp:(double)timestamp updateTimestamp:(double)updateTimestamp state:(int64_t)state response:(int64_t)response resolution:(int64_t)resolution sosState:(int64_t)sosState operatingMode:(int64_t)self0 acknowledgement:(BOOL)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMAnomalyEvent

- (CMAnomalyEvent)initWithIdentifier:(unint64_t)identifier absoluteTimestamp:(double)timestamp updateTimestamp:(double)updateTimestamp state:(int64_t)state response:(int64_t)response resolution:(int64_t)resolution sosState:(int64_t)sosState operatingMode:(int64_t)self0
{
  v19.receiver = self;
  v19.super_class = CMAnomalyEvent;
  result = [(CMAnomalyEvent *)&v19 init];
  if (result)
  {
    result->_absoluteTimestamp = timestamp;
    result->_updateTimestamp = updateTimestamp;
    result->_state = state;
    result->_response = response;
    result->_resolution = resolution;
    result->_acknowledgement = 0;
    result->_identifier = identifier;
    result->_sosState = sosState;
    result->_operatingMode = mode;
  }

  return result;
}

- (CMAnomalyEvent)initWithIdentifier:(unint64_t)identifier absoluteTimestamp:(double)timestamp updateTimestamp:(double)updateTimestamp state:(int64_t)state response:(int64_t)response resolution:(int64_t)resolution sosState:(int64_t)sosState operatingMode:(int64_t)self0 acknowledgement:(BOOL)self1
{
  result = objc_msgSend_initWithIdentifier_absoluteTimestamp_updateTimestamp_state_response_resolution_sosState_operatingMode_(self, a2, identifier, state, response, resolution, sosState, mode, timestamp, updateTimestamp);
  if (result)
  {
    result->_acknowledgement = acknowledgement;
  }

  return result;
}

- (CMAnomalyEvent)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = CMAnomalyEvent;
  v5 = [(CMAnomalyEvent *)&v17 init];
  if (v5)
  {
    v5->_identifier = objc_msgSend_decodeInt64ForKey_(coder, v4, @"kCMAnomalyEventAopTimestamp");
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCMAnomalyEventAbsTimestamp");
    v5->_absoluteTimestamp = v7;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"kCMAnomalyEventUpdTimestamp");
    v5->_updateTimestamp = v9;
    v5->_state = objc_msgSend_decodeIntegerForKey_(coder, v10, @"kCMAnomalyEventState");
    v5->_response = objc_msgSend_decodeIntegerForKey_(coder, v11, @"kCMAnomalyEventResponse");
    v5->_resolution = objc_msgSend_decodeIntegerForKey_(coder, v12, @"kCMAnomalyEventResolution");
    v5->_acknowledgement = objc_msgSend_decodeBoolForKey_(coder, v13, @"kCMAnomalyEventIsAcknowledged");
    v5->_sosState = objc_msgSend_decodeIntegerForKey_(coder, v14, @"kCMAnomalyEventSOSState");
    v5->_operatingMode = objc_msgSend_decodeIntegerForKey_(coder, v15, @"kCMAnomalyEventOperatingMode");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  acknowledgement = self->_acknowledgement;
  return objc_msgSend_initWithIdentifier_absoluteTimestamp_updateTimestamp_state_response_resolution_sosState_operatingMode_acknowledgement_(v7, v8, self->_identifier, self->_state, self->_response, self->_resolution, self->_sosState, self->_operatingMode, self->_absoluteTimestamp, self->_updateTimestamp, acknowledgement);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt64_forKey_(coder, a2, self->_identifier, @"kCMAnomalyEventAopTimestamp");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCMAnomalyEventAbsTimestamp", self->_absoluteTimestamp);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMAnomalyEventUpdTimestamp", self->_updateTimestamp);
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_state, @"kCMAnomalyEventState");
  objc_msgSend_encodeInteger_forKey_(coder, v8, self->_response, @"kCMAnomalyEventResponse");
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->_resolution, @"kCMAnomalyEventResolution");
  objc_msgSend_encodeBool_forKey_(coder, v10, self->_acknowledgement, @"kCMAnomalyEventIsAcknowledged");
  objc_msgSend_encodeInteger_forKey_(coder, v11, self->_sosState, @"kCMAnomalyEventSOSState");
  operatingMode = self->_operatingMode;

  objc_msgSend_encodeInteger_forKey_(coder, v12, operatingMode, @"kCMAnomalyEventOperatingMode");
}

- (id)debugDescription
{
  v3 = self->_state - 1;
  if (v3 > 2)
  {
    v4 = @"Undefined";
  }

  else
  {
    v4 = off_1E7535088[v3];
  }

  response = self->_response;
  if (response > 5)
  {
    v6 = @"Undefined";
  }

  else
  {
    v6 = off_1E75350A0[response];
  }

  resolution = self->_resolution;
  if (resolution > 2)
  {
    v8 = @"Undefined";
  }

  else
  {
    v8 = off_1E75350D0[resolution];
  }

  sosState = self->_sosState;
  if (sosState > 4)
  {
    v10 = @"Undefined";
  }

  else
  {
    v10 = off_1E75350E8[sosState];
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v16 = objc_msgSend_date(self, v14, v15);
  return objc_msgSend_stringWithFormat_(v11, v17, @"%@,<date %@ identifier %llu state %@ response %@ resolution %@ absoluteTimestamp %f updated %f SOS Call %@>", v13, v16, self->_identifier, v4, v6, v8, *&self->_absoluteTimestamp, *&self->_updateTimestamp, v10);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_date(self, v6, v7);
  return objc_msgSend_stringWithFormat_(v3, v9, @"%@,<date %@ identifier %llu state %d response %d resolution %d absoluteTimestamp %f updated %f SOS Call state %d>", v5, v8, self->_identifier, self->_state, self->_response, self->_resolution, *&self->_absoluteTimestamp, *&self->_updateTimestamp, self->_sosState);
}

@end