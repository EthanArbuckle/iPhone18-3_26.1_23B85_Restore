@interface MapsToken
- (BOOL)isEqual:(id)equal;
- (MapsToken)initWithDelegate:(id)delegate tokenGroupName:(id)name reason:(id)reason;
- (MapsToken)initWithDelegate:(id)delegate tokenGroupName:(id)name userInfo:(id)info;
- (MapsTokenDelegate)delegate;
- (NSString)reason;
- (id)description;
- (id)tombstone;
- (void)dealloc;
@end

@implementation MapsToken

- (id)description
{
  v8.receiver = self;
  v8.super_class = MapsToken;
  v3 = [(MapsToken *)&v8 description];
  tokenGroupName = [(MapsToken *)self tokenGroupName];
  userInfo = [(MapsToken *)self userInfo];
  v6 = [NSString stringWithFormat:@"%@ <tokenGroupName: %@, userInfo: %@>", v3, tokenGroupName, userInfo];

  return v6;
}

- (NSString)reason
{
  userInfo = [(MapsToken *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"reason"];

  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [NSString stringWithFormat:@"%@", v3];

      v3 = v4;
    }
  }

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    tombstone = [(MapsToken *)self tombstone];
    [v4 decrementForToken:tombstone];

    objc_storeWeak(&self->_delegate, 0);
  }

  v6.receiver = self;
  v6.super_class = MapsToken;
  [(MapsToken *)&v6 dealloc];
}

- (id)tombstone
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(NSUUID *)self->_identifier copy];
  v5 = v3[1];
  v3[1] = v4;

  v6 = [(NSString *)self->_tokenGroupName copy];
  v7 = v3[3];
  v3[3] = v6;

  v8 = [(NSDictionary *)self->_userInfo copy];
  v9 = v3[4];
  v3[4] = v8;

  return v3;
}

- (MapsTokenDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [equalCopy[1] isEqual:self->_identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MapsToken)initWithDelegate:(id)delegate tokenGroupName:(id)name reason:(id)reason
{
  v14 = @"reason";
  reasonCopy = reason;
  reasonCopy2 = reason;
  nameCopy = name;
  delegateCopy = delegate;
  v11 = [NSDictionary dictionaryWithObjects:&reasonCopy forKeys:&v14 count:1];

  v12 = [(MapsToken *)self initWithDelegate:delegateCopy tokenGroupName:nameCopy userInfo:v11];
  return v12;
}

- (MapsToken)initWithDelegate:(id)delegate tokenGroupName:(id)name userInfo:(id)info
{
  delegateCopy = delegate;
  nameCopy = name;
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = MapsToken;
  v11 = [(MapsToken *)&v21 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [nameCopy copy];
    tokenGroupName = v11->_tokenGroupName;
    v11->_tokenGroupName = v14;

    v16 = [infoCopy copy];
    userInfo = v11->_userInfo;
    v11->_userInfo = v16;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    +[NSDate timeIntervalSinceReferenceDate];
    v11->_createdTimestamp = v18;
    WeakRetained = objc_loadWeakRetained(&v11->_delegate);
    [WeakRetained incrementForToken:v11];
  }

  return v11;
}

@end