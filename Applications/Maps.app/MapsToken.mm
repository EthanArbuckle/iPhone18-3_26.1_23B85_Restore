@interface MapsToken
- (BOOL)isEqual:(id)a3;
- (MapsToken)initWithDelegate:(id)a3 tokenGroupName:(id)a4 reason:(id)a5;
- (MapsToken)initWithDelegate:(id)a3 tokenGroupName:(id)a4 userInfo:(id)a5;
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
  v4 = [(MapsToken *)self tokenGroupName];
  v5 = [(MapsToken *)self userInfo];
  v6 = [NSString stringWithFormat:@"%@ <tokenGroupName: %@, userInfo: %@>", v3, v4, v5];

  return v6;
}

- (NSString)reason
{
  v2 = [(MapsToken *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"reason"];

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
    v5 = [(MapsToken *)self tombstone];
    [v4 decrementForToken:v5];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [v4[1] isEqual:self->_identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MapsToken)initWithDelegate:(id)a3 tokenGroupName:(id)a4 reason:(id)a5
{
  v14 = @"reason";
  v15 = a5;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v12 = [(MapsToken *)self initWithDelegate:v10 tokenGroupName:v9 userInfo:v11];
  return v12;
}

- (MapsToken)initWithDelegate:(id)a3 tokenGroupName:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MapsToken;
  v11 = [(MapsToken *)&v21 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    tokenGroupName = v11->_tokenGroupName;
    v11->_tokenGroupName = v14;

    v16 = [v10 copy];
    userInfo = v11->_userInfo;
    v11->_userInfo = v16;

    objc_storeWeak(&v11->_delegate, v8);
    +[NSDate timeIntervalSinceReferenceDate];
    v11->_createdTimestamp = v18;
    WeakRetained = objc_loadWeakRetained(&v11->_delegate);
    [WeakRetained incrementForToken:v11];
  }

  return v11;
}

@end