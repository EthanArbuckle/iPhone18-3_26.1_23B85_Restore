@interface IUISessionChange
- (IUISessionChange)initWithCoder:(id)coder;
- (id)description;
- (id)initBeginSession:(BOOL)session withID:(id)d documentTraits:(id)traits documentState:(id)state andEndSessionWithID:(id)iD options:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IUISessionChange

- (id)initBeginSession:(BOOL)session withID:(id)d documentTraits:(id)traits documentState:(id)state andEndSessionWithID:(id)iD options:(id)options
{
  dCopy = d;
  traitsCopy = traits;
  stateCopy = state;
  iDCopy = iD;
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = IUISessionChange;
  v19 = [(IUISessionChange *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_isBeginningSession = session;
    v21 = [dCopy copy];
    beginSessionID = v20->_beginSessionID;
    v20->_beginSessionID = v21;

    v23 = [traitsCopy copy];
    beginSessionDocumentTraits = v20->_beginSessionDocumentTraits;
    v20->_beginSessionDocumentTraits = v23;

    v25 = [stateCopy copy];
    beginSessionDocumentState = v20->_beginSessionDocumentState;
    v20->_beginSessionDocumentState = v25;

    v27 = [iDCopy copy];
    endSessionID = v20->_endSessionID;
    v20->_endSessionID = v27;

    v29 = [optionsCopy copy];
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

- (void)encodeWithCoder:(id)coder
{
  isBeginningSession = self->_isBeginningSession;
  coderCopy = coder;
  [coderCopy encodeBool:isBeginningSession forKey:@"isBeginningSession"];
  [coderCopy encodeObject:self->_beginSessionID forKey:@"beginSessionID"];
  [coderCopy encodeObject:self->_beginSessionDocumentTraits forKey:@"documentTraits"];
  [coderCopy encodeObject:self->_beginSessionDocumentState forKey:@"documentState"];
  [coderCopy encodeObject:self->_endSessionID forKey:@"endSessionID"];
  [coderCopy encodeObject:self->_options forKey:@"options"];
}

- (IUISessionChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isBeginningSession"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beginSessionID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentTraits"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endSessionID"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];

  v11 = [(IUISessionChange *)self initBeginSession:v5 withID:v6 documentTraits:v7 documentState:v8 andEndSessionWithID:v9 options:v10];
  return v11;
}

@end