@interface CXAction
- (CXAction)init;
- (CXAction)initWithCoder:(NSCoder *)aDecoder;
- (CXActionDelegate)delegate;
- (NSDate)timeoutDate;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)fail;
- (void)fulfill;
- (void)updateAsFailedWithReason:(int64_t)reason;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXAction

- (CXAction)init
{
  v6.receiver = self;
  v6.super_class = CXAction;
  v2 = [(CXAction *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;
  }

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXAction *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 appendFormat:@" UUID=%@", uUIDString];

  originator = [(CXAction *)self originator];
  if (originator)
  {
    v7 = originator;
    v8 = NSStringFromSelector(sel_originator);
    v9 = [(NSString *)MEMORY[0x1E696AEC0] cx_stringWithCXActionOriginator:v7];
    [v3 appendFormat:@" %@=%@", v8, v9];
  }

  [v3 appendFormat:@" state=%ld", -[CXAction state](self, "state")];
  commitDate = [(CXAction *)self commitDate];
  [v3 appendFormat:@" commitDate=%@", commitDate];

  if ([(CXAction *)self state]== 2)
  {
    [v3 appendFormat:@" failureReason=%ld", -[CXAction failureReason](self, "failureReason")];
  }

  customDescription = [(CXAction *)self customDescription];
  [v3 appendString:customDescription];

  [v3 appendString:@">"];

  return v3;
}

- (CXActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fail
{
  v3 = [(CXAction *)self copy];
  [v3 updateAsFailedWithReason:1];
  delegate = [v3 delegate];
  [delegate actionCompleted:v3];
}

- (NSDate)timeoutDate
{
  v3 = MEMORY[0x1E695DF00];
  [objc_opt_class() timeout];
  v5 = v4;
  commitDate = [(CXAction *)self commitDate];
  if (commitDate)
  {
    v7 = [v3 dateWithTimeInterval:commitDate sinceDate:v5];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v7 = [v3 dateWithTimeInterval:date sinceDate:v5];
  }

  return v7;
}

- (void)fulfill
{
  v3 = [(CXAction *)self copy];
  [v3 updateAsFulfilled];
  delegate = [v3 delegate];
  [delegate actionCompleted:v3];
}

- (void)updateAsFailedWithReason:(int64_t)reason
{
  [(CXAction *)self setState:2];

  [(CXAction *)self setFailureReason:reason];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  uUID = [(CXAction *)self UUID];
  [copyCopy setUUID:uUID];

  delegate = [(CXAction *)self delegate];
  [copyCopy setDelegate:delegate];

  [copyCopy setOriginator:{-[CXAction originator](self, "originator")}];
  [copyCopy setState:{-[CXAction state](self, "state")}];
  [copyCopy setFailureReason:{-[CXAction failureReason](self, "failureReason")}];
  commitDate = [(CXAction *)self commitDate];
  [copyCopy setCommitDate:commitDate];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXAction *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXAction *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v18.receiver = self;
  v18.super_class = CXAction;
  v5 = [(CXAction *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [(NSCoder *)v4 decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = NSStringFromSelector(sel_originator);
    v5->_originator = [(NSCoder *)v4 decodeIntegerForKey:v10];

    v11 = NSStringFromSelector(sel_state);
    v5->_state = [(NSCoder *)v4 decodeIntegerForKey:v11];

    v12 = NSStringFromSelector(sel_failureReason);
    v5->_failureReason = [(NSCoder *)v4 decodeIntegerForKey:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_commitDate);
    v15 = [(NSCoder *)v4 decodeObjectOfClass:v13 forKey:v14];
    commitDate = v5->_commitDate;
    v5->_commitDate = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXAction *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  originator = [(CXAction *)self originator];
  v8 = NSStringFromSelector(sel_originator);
  [coderCopy encodeInteger:originator forKey:v8];

  state = [(CXAction *)self state];
  v10 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v10];

  failureReason = [(CXAction *)self failureReason];
  v12 = NSStringFromSelector(sel_failureReason);
  [coderCopy encodeInteger:failureReason forKey:v12];

  commitDate = [(CXAction *)self commitDate];
  v13 = NSStringFromSelector(sel_commitDate);
  [coderCopy encodeObject:commitDate forKey:v13];
}

@end