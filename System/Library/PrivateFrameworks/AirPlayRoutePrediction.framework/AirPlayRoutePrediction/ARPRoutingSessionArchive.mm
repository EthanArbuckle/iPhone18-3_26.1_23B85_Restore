@interface ARPRoutingSessionArchive
- (ARPRoutingSessionArchive)initWithCoder:(id)coder;
- (ARPRoutingSessionArchive)initWithSessions:(id)sessions routingSessionTimeout:(double)timeout;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPRoutingSessionArchive

- (ARPRoutingSessionArchive)initWithSessions:(id)sessions routingSessionTimeout:(double)timeout
{
  sessionsCopy = sessions;
  v11.receiver = self;
  v11.super_class = ARPRoutingSessionArchive;
  v8 = [(ARPRoutingSessionArchive *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sessions, sessions);
    v9->_routingSessionTimeout = timeout;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sessions = [(ARPRoutingSessionArchive *)self sessions];
  [(ARPRoutingSessionArchive *)self routingSessionTimeout];
  v6 = [v4 initWithSessions:sessions routingSessionTimeout:?];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessions = [(ARPRoutingSessionArchive *)self sessions];
  v6 = NSStringFromSelector(sel_sessions);
  [coderCopy encodeObject:sessions forKey:v6];

  [(ARPRoutingSessionArchive *)self routingSessionTimeout];
  v8 = v7;
  v9 = NSStringFromSelector(sel_routingSessionTimeout);
  [coderCopy encodeDouble:v9 forKey:v8];
}

- (ARPRoutingSessionArchive)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_sessions);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  v10 = NSStringFromSelector(sel_routingSessionTimeout);
  [coderCopy decodeDoubleForKey:v10];
  v12 = v11;

  v13 = [(ARPRoutingSessionArchive *)self initWithSessions:v9 routingSessionTimeout:v12];
  return v13;
}

@end