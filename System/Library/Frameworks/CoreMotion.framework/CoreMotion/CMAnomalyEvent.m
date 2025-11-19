@interface CMAnomalyEvent
- (CMAnomalyEvent)initWithCoder:(id)a3;
- (CMAnomalyEvent)initWithIdentifier:(unint64_t)a3 absoluteTimestamp:(double)a4 updateTimestamp:(double)a5 state:(int64_t)a6 response:(int64_t)a7 resolution:(int64_t)a8 sosState:(int64_t)a9 operatingMode:(int64_t)a10;
- (CMAnomalyEvent)initWithIdentifier:(unint64_t)a3 absoluteTimestamp:(double)a4 updateTimestamp:(double)a5 state:(int64_t)a6 response:(int64_t)a7 resolution:(int64_t)a8 sosState:(int64_t)a9 operatingMode:(int64_t)a10 acknowledgement:(BOOL)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMAnomalyEvent

- (CMAnomalyEvent)initWithIdentifier:(unint64_t)a3 absoluteTimestamp:(double)a4 updateTimestamp:(double)a5 state:(int64_t)a6 response:(int64_t)a7 resolution:(int64_t)a8 sosState:(int64_t)a9 operatingMode:(int64_t)a10
{
  v19.receiver = self;
  v19.super_class = CMAnomalyEvent;
  result = [(CMAnomalyEvent *)&v19 init];
  if (result)
  {
    result->_absoluteTimestamp = a4;
    result->_updateTimestamp = a5;
    result->_state = a6;
    result->_response = a7;
    result->_resolution = a8;
    result->_acknowledgement = 0;
    result->_identifier = a3;
    result->_sosState = a9;
    result->_operatingMode = a10;
  }

  return result;
}

- (CMAnomalyEvent)initWithIdentifier:(unint64_t)a3 absoluteTimestamp:(double)a4 updateTimestamp:(double)a5 state:(int64_t)a6 response:(int64_t)a7 resolution:(int64_t)a8 sosState:(int64_t)a9 operatingMode:(int64_t)a10 acknowledgement:(BOOL)a11
{
  result = objc_msgSend_initWithIdentifier_absoluteTimestamp_updateTimestamp_state_response_resolution_sosState_operatingMode_(self, a2, a3, a6, a7, a8, a9, a10, a4, a5);
  if (result)
  {
    result->_acknowledgement = a11;
  }

  return result;
}

- (CMAnomalyEvent)initWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = CMAnomalyEvent;
  v5 = [(CMAnomalyEvent *)&v17 init];
  if (v5)
  {
    v5->_identifier = objc_msgSend_decodeInt64ForKey_(a3, v4, @"kCMAnomalyEventAopTimestamp");
    objc_msgSend_decodeDoubleForKey_(a3, v6, @"kCMAnomalyEventAbsTimestamp");
    v5->_absoluteTimestamp = v7;
    objc_msgSend_decodeDoubleForKey_(a3, v8, @"kCMAnomalyEventUpdTimestamp");
    v5->_updateTimestamp = v9;
    v5->_state = objc_msgSend_decodeIntegerForKey_(a3, v10, @"kCMAnomalyEventState");
    v5->_response = objc_msgSend_decodeIntegerForKey_(a3, v11, @"kCMAnomalyEventResponse");
    v5->_resolution = objc_msgSend_decodeIntegerForKey_(a3, v12, @"kCMAnomalyEventResolution");
    v5->_acknowledgement = objc_msgSend_decodeBoolForKey_(a3, v13, @"kCMAnomalyEventIsAcknowledged");
    v5->_sosState = objc_msgSend_decodeIntegerForKey_(a3, v14, @"kCMAnomalyEventSOSState");
    v5->_operatingMode = objc_msgSend_decodeIntegerForKey_(a3, v15, @"kCMAnomalyEventOperatingMode");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  acknowledgement = self->_acknowledgement;
  return objc_msgSend_initWithIdentifier_absoluteTimestamp_updateTimestamp_state_response_resolution_sosState_operatingMode_acknowledgement_(v7, v8, self->_identifier, self->_state, self->_response, self->_resolution, self->_sosState, self->_operatingMode, self->_absoluteTimestamp, self->_updateTimestamp, acknowledgement);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt64_forKey_(a3, a2, self->_identifier, @"kCMAnomalyEventAopTimestamp");
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"kCMAnomalyEventAbsTimestamp", self->_absoluteTimestamp);
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMAnomalyEventUpdTimestamp", self->_updateTimestamp);
  objc_msgSend_encodeInteger_forKey_(a3, v7, self->_state, @"kCMAnomalyEventState");
  objc_msgSend_encodeInteger_forKey_(a3, v8, self->_response, @"kCMAnomalyEventResponse");
  objc_msgSend_encodeInteger_forKey_(a3, v9, self->_resolution, @"kCMAnomalyEventResolution");
  objc_msgSend_encodeBool_forKey_(a3, v10, self->_acknowledgement, @"kCMAnomalyEventIsAcknowledged");
  objc_msgSend_encodeInteger_forKey_(a3, v11, self->_sosState, @"kCMAnomalyEventSOSState");
  operatingMode = self->_operatingMode;

  objc_msgSend_encodeInteger_forKey_(a3, v12, operatingMode, @"kCMAnomalyEventOperatingMode");
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