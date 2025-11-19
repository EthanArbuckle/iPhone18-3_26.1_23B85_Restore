@interface DASContextInfo
- (BOOL)isEqual:(id)a3;
- (id)_initWithIdentifier:(unsigned int)a3 pid:(int)a4 raw:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation DASContextInfo

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [NSString stringWithFormat:@"%x", self->_identifier];
  [v3 appendString:v4 withName:@"id"];

  v5 = [v3 appendInt:self->_pid withName:@"pid"];
  v6 = [v3 build];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [BSEqualsBuilder builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000016B4;
  v18[3] = &unk_1000103E8;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendUnsignedInteger:identifier counterpart:v18];
  pid = self->_pid;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000016C0;
  v16 = &unk_100010410;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendInteger:pid counterpart:&v13];
  LOBYTE(pid) = [v5 isEqual];

  return pid;
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [v3 appendUnsignedInteger:self->_identifier];
  v5 = [v3 appendInteger:self->_pid];
  v6 = [v3 hash];

  return v6;
}

- (id)_initWithIdentifier:(unsigned int)a3 pid:(int)a4 raw:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = DASContextInfo;
  v9 = [(DASContextInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_identifier = a3;
    v9->_pid = a4;
    v11 = [v8 copy];
    raw = v10->_raw;
    v10->_raw = v11;
  }

  return v10;
}

@end