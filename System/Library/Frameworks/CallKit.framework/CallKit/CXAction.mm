@interface CXAction
- (CXAction)init;
- (CXAction)initWithCoder:(NSCoder *)aDecoder;
- (CXActionDelegate)delegate;
- (NSDate)timeoutDate;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fail;
- (void)fulfill;
- (void)updateAsFailedWithReason:(int64_t)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXAction

- (CXAction)init
{
  v6.receiver = self;
  v6.super_class = CXAction;
  v2 = [(CXAction *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXAction *)self UUID];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@" UUID=%@", v5];

  v6 = [(CXAction *)self originator];
  if (v6)
  {
    v7 = v6;
    v8 = NSStringFromSelector(sel_originator);
    v9 = [(NSString *)MEMORY[0x1E696AEC0] cx_stringWithCXActionOriginator:v7];
    [v3 appendFormat:@" %@=%@", v8, v9];
  }

  [v3 appendFormat:@" state=%ld", -[CXAction state](self, "state")];
  v10 = [(CXAction *)self commitDate];
  [v3 appendFormat:@" commitDate=%@", v10];

  if ([(CXAction *)self state]== 2)
  {
    [v3 appendFormat:@" failureReason=%ld", -[CXAction failureReason](self, "failureReason")];
  }

  v11 = [(CXAction *)self customDescription];
  [v3 appendString:v11];

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
  v2 = [v3 delegate];
  [v2 actionCompleted:v3];
}

- (NSDate)timeoutDate
{
  v3 = MEMORY[0x1E695DF00];
  [objc_opt_class() timeout];
  v5 = v4;
  v6 = [(CXAction *)self commitDate];
  if (v6)
  {
    v7 = [v3 dateWithTimeInterval:v6 sinceDate:v5];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v7 = [v3 dateWithTimeInterval:v8 sinceDate:v5];
  }

  return v7;
}

- (void)fulfill
{
  v3 = [(CXAction *)self copy];
  [v3 updateAsFulfilled];
  v2 = [v3 delegate];
  [v2 actionCompleted:v3];
}

- (void)updateAsFailedWithReason:(int64_t)a3
{
  [(CXAction *)self setState:2];

  [(CXAction *)self setFailureReason:a3];
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v5 = a3;
  v6 = [(CXAction *)self UUID];
  [v5 setUUID:v6];

  v7 = [(CXAction *)self delegate];
  [v5 setDelegate:v7];

  [v5 setOriginator:{-[CXAction originator](self, "originator")}];
  [v5 setState:{-[CXAction state](self, "state")}];
  [v5 setFailureReason:{-[CXAction failureReason](self, "failureReason")}];
  v8 = [(CXAction *)self commitDate];
  [v5 setCommitDate:v8];
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXAction *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXAction *)self updateCopy:v5 withZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXAction *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXAction *)self originator];
  v8 = NSStringFromSelector(sel_originator);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(CXAction *)self state];
  v10 = NSStringFromSelector(sel_state);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(CXAction *)self failureReason];
  v12 = NSStringFromSelector(sel_failureReason);
  [v4 encodeInteger:v11 forKey:v12];

  v14 = [(CXAction *)self commitDate];
  v13 = NSStringFromSelector(sel_commitDate);
  [v4 encodeObject:v14 forKey:v13];
}

@end