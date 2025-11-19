@interface ADAnalyticsEvent
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ADAnalyticsEvent

+ (id)options
{
  if (options_once_5 != -1)
  {
    +[ADAnalyticsEvent options];
  }

  v3 = options_sOptions_5;

  return v3;
}

void __27__ADAnalyticsEvent_options__block_invoke()
{
  v0 = options_sOptions_5;
  options_sOptions_5 = &unk_285104D08;
}

- (int)StringAsEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PrerollRequested"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PrivacyUserTransparencyDidAppear"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PrivacyUserTransparencyDidRenderTransparency"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PrivacyUserTransparencyDidDisappear"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PrivacyUserTransparencyDidLinkOut"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidAppear"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidRenderTransparency"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidDisappear"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PrivacyAdTransparencyDidLinkOut"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADAnalyticsEvent;
  v4 = [(ADAnalyticsEvent *)&v8 description];
  v5 = [(ADAnalyticsEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  event = self->_event;
  if (event >= 9)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_event];
  }

  else
  {
    v5 = off_278C55270[event];
  }

  [v3 setObject:v5 forKey:@"event"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [v3 setObject:v6 forKey:@"timestamp"];

  return v3;
}

- (void)writeTo:(id)a3
{
  event = self->_event;
  v6 = a3;
  PBDataWriterWriteInt32Field();
  timestamp = self->_timestamp;
  PBDataWriterWriteDoubleField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 4) = self->_event;
  *(result + 1) = *&self->_timestamp;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_event == *(v4 + 4) && self->_timestamp == *(v4 + 1);

  return v5;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  v5 = (timestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = 2654435761u * *vbslq_s8(vnegq_f64(v6), v3, v2).i64;
  v8 = v7 + v5;
  v9 = fabs(v5);
  if (v5 <= 0.0)
  {
    v8 = v7;
  }

  v10 = v7 - v9;
  if (v5 >= 0.0)
  {
    v10 = v8;
  }

  return v10 ^ (2654435761 * self->_event);
}

@end