@interface SecSessionInfo
- (SecSessionInfo)initWithPSK:(id)a3 :(id)a4 :(unsigned int)a5 :(unint64_t)a6 :(unint64_t)a7;
@end

@implementation SecSessionInfo

- (SecSessionInfo)initWithPSK:(id)a3 :(id)a4 :(unsigned int)a5 :(unint64_t)a6 :(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = SecSessionInfo;
  v14 = [(SecSessionInfo *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    psk = v14->_psk;
    v14->_psk = v15;

    v17 = [v13 copy];
    psk_id = v14->_psk_id;
    v14->_psk_id = v17;

    v14->_ticket_age_add = a5;
    v14->_ticket_creation_time = a6;
    v14->_ticket_lifetime = a7;
  }

  return v14;
}

@end