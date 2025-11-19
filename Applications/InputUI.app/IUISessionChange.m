@interface IUISessionChange
- (IUISessionChange)initWithCoder:(id)a3;
- (id)description;
- (id)initBeginSession:(BOOL)a3 withID:(id)a4 documentTraits:(id)a5 documentState:(id)a6 andEndSessionWithID:(id)a7 options:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IUISessionChange

- (id)initBeginSession:(BOOL)a3 withID:(id)a4 documentTraits:(id)a5 documentState:(id)a6 andEndSessionWithID:(id)a7 options:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = IUISessionChange;
  v19 = [(IUISessionChange *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_isBeginningSession = a3;
    v21 = [v14 copy];
    beginSessionID = v20->_beginSessionID;
    v20->_beginSessionID = v21;

    v23 = [v15 copy];
    beginSessionDocumentTraits = v20->_beginSessionDocumentTraits;
    v20->_beginSessionDocumentTraits = v23;

    v25 = [v16 copy];
    beginSessionDocumentState = v20->_beginSessionDocumentState;
    v20->_beginSessionDocumentState = v25;

    v27 = [v17 copy];
    endSessionID = v20->_endSessionID;
    v20->_endSessionID = v27;

    v29 = [v18 copy];
    options = v20->_options;
    v20->_options = v29;
  }

  return v20;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_isBeginningSession)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  v7 = [NSString stringWithFormat:@"<%@: %p begin:%s; beginID:%@; endID:%@>", v4, self, v6, self->_beginSessionID, self->_endSessionID];;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  isBeginningSession = self->_isBeginningSession;
  v5 = a3;
  [v5 encodeBool:isBeginningSession forKey:@"isBeginningSession"];
  [v5 encodeObject:self->_beginSessionID forKey:@"beginSessionID"];
  [v5 encodeObject:self->_beginSessionDocumentTraits forKey:@"documentTraits"];
  [v5 encodeObject:self->_beginSessionDocumentState forKey:@"documentState"];
  [v5 encodeObject:self->_endSessionID forKey:@"endSessionID"];
  [v5 encodeObject:self->_options forKey:@"options"];
}

- (IUISessionChange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isBeginningSession"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beginSessionID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentTraits"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endSessionID"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];

  v11 = [(IUISessionChange *)self initBeginSession:v5 withID:v6 documentTraits:v7 documentState:v8 andEndSessionWithID:v9 options:v10];
  return v11;
}

@end