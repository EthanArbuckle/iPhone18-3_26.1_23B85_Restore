@interface UNPushNotificationTrigger
- (BOOL)isEqual:(id)equal;
- (UNPushNotificationTrigger)initWithCoder:(id)coder;
- (id)_initWithContentAvailable:(BOOL)available mutableContent:(BOOL)content;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNPushNotificationTrigger

- (id)_initWithContentAvailable:(BOOL)available mutableContent:(BOOL)content
{
  result = [(UNNotificationTrigger *)self _initWithRepeats:0];
  if (result)
  {
    *(result + 9) = available;
    *(result + 10) = content;
  }

  return result;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = UNPushNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v6 hash];
  isContentAvailable = [(UNPushNotificationTrigger *)self isContentAvailable];
  return v3 ^ isContentAvailable ^ [(UNPushNotificationTrigger *)self isMutableContent];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = UNPushNotificationTrigger, -[UNNotificationTrigger isEqual:](&v9, sel_isEqual_, equalCopy)) && (v5 = -[UNPushNotificationTrigger isContentAvailable](self, "isContentAvailable"), v5 == [equalCopy isContentAvailable]))
  {
    isMutableContent = [(UNPushNotificationTrigger *)self isMutableContent];
    v6 = isMutableContent ^ [equalCopy isMutableContent] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(UNPushNotificationTrigger *)self isContentAvailable];
  v5 = NSStringFromBOOL();
  [(UNPushNotificationTrigger *)self isMutableContent];
  v6 = NSStringFromBOOL();
  v7 = [v3 stringWithFormat:@"<%@: %p contentAvailable: %@, mutableContent: %@>", v4, self, v5, v6];;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UNPushNotificationTrigger;
  coderCopy = coder;
  [(UNNotificationTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[UNPushNotificationTrigger isContentAvailable](self forKey:{"isContentAvailable", v5.receiver, v5.super_class), @"contentAvailable"}];
  [coderCopy encodeBool:-[UNPushNotificationTrigger isMutableContent](self forKey:{"isMutableContent"), @"mutableContent"}];
}

- (UNPushNotificationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UNPushNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    *(&v5->super._repeats + 1) = [coderCopy decodeBoolForKey:@"contentAvailable"];
    *(&v5->super._repeats + 2) = [coderCopy decodeBoolForKey:@"mutableContent"];
  }

  return v5;
}

@end