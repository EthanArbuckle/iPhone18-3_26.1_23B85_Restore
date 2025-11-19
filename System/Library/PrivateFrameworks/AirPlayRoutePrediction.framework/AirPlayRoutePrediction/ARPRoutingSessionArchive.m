@interface ARPRoutingSessionArchive
- (ARPRoutingSessionArchive)initWithCoder:(id)a3;
- (ARPRoutingSessionArchive)initWithSessions:(id)a3 routingSessionTimeout:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARPRoutingSessionArchive

- (ARPRoutingSessionArchive)initWithSessions:(id)a3 routingSessionTimeout:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ARPRoutingSessionArchive;
  v8 = [(ARPRoutingSessionArchive *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sessions, a3);
    v9->_routingSessionTimeout = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ARPRoutingSessionArchive *)self sessions];
  [(ARPRoutingSessionArchive *)self routingSessionTimeout];
  v6 = [v4 initWithSessions:v5 routingSessionTimeout:?];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ARPRoutingSessionArchive *)self sessions];
  v6 = NSStringFromSelector(sel_sessions);
  [v4 encodeObject:v5 forKey:v6];

  [(ARPRoutingSessionArchive *)self routingSessionTimeout];
  v8 = v7;
  v9 = NSStringFromSelector(sel_routingSessionTimeout);
  [v4 encodeDouble:v9 forKey:v8];
}

- (ARPRoutingSessionArchive)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_sessions);
  v9 = [v5 decodeObjectOfClasses:v7 forKey:v8];

  v10 = NSStringFromSelector(sel_routingSessionTimeout);
  [v5 decodeDoubleForKey:v10];
  v12 = v11;

  v13 = [(ARPRoutingSessionArchive *)self initWithSessions:v9 routingSessionTimeout:v12];
  return v13;
}

@end