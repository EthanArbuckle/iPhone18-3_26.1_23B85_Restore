@interface UNPushNotificationTrigger
- (BOOL)isEqual:(id)a3;
- (UNPushNotificationTrigger)initWithCoder:(id)a3;
- (id)_initWithContentAvailable:(BOOL)a3 mutableContent:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNPushNotificationTrigger

- (id)_initWithContentAvailable:(BOOL)a3 mutableContent:(BOOL)a4
{
  result = [(UNNotificationTrigger *)self _initWithRepeats:0];
  if (result)
  {
    *(result + 9) = a3;
    *(result + 10) = a4;
  }

  return result;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = UNPushNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v6 hash];
  v4 = [(UNPushNotificationTrigger *)self isContentAvailable];
  return v3 ^ v4 ^ [(UNPushNotificationTrigger *)self isMutableContent];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = UNPushNotificationTrigger, -[UNNotificationTrigger isEqual:](&v9, sel_isEqual_, v4)) && (v5 = -[UNPushNotificationTrigger isContentAvailable](self, "isContentAvailable"), v5 == [v4 isContentAvailable]))
  {
    v8 = [(UNPushNotificationTrigger *)self isMutableContent];
    v6 = v8 ^ [v4 isMutableContent] ^ 1;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UNPushNotificationTrigger;
  v4 = a3;
  [(UNNotificationTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[UNPushNotificationTrigger isContentAvailable](self forKey:{"isContentAvailable", v5.receiver, v5.super_class), @"contentAvailable"}];
  [v4 encodeBool:-[UNPushNotificationTrigger isMutableContent](self forKey:{"isMutableContent"), @"mutableContent"}];
}

- (UNPushNotificationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UNPushNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v7 initWithCoder:v4];
  if (v5)
  {
    *(&v5->super._repeats + 1) = [v4 decodeBoolForKey:@"contentAvailable"];
    *(&v5->super._repeats + 2) = [v4 decodeBoolForKey:@"mutableContent"];
  }

  return v5;
}

@end