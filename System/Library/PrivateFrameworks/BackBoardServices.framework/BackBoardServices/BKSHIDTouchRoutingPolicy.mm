@interface BKSHIDTouchRoutingPolicy
+ (void)inspectChangesWithOldPolicy:(id)a3 newPolicy:(id)a4 usingBlock:(id)a5;
- (BKSHIDTouchRoutingPolicy)init;
- (BKSHIDTouchRoutingPolicy)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDTouchRoutingPolicy

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[BKSHIDTouchRoutingPolicy shouldAvoidHitTesting](self forKey:{"shouldAvoidHitTesting"), @"shouldAvoidHitTesting"}];
  v5 = [(BKSHIDTouchRoutingPolicy *)self contextIDsToAlwaysSendTouches];
  [v4 encodeObject:v5 forKey:@"contextIDsToAlwaysSendTouches"];

  v6 = [(BKSHIDTouchRoutingPolicy *)self contextIDsToExcludeFromHitTesting];
  [v4 encodeObject:v6 forKey:@"contextIDsToExcludeFromHitTesting"];
}

- (BKSHIDTouchRoutingPolicy)initWithCoder:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BKSHIDTouchRoutingPolicy *)self init];
  if (!v5)
  {
    goto LABEL_9;
  }

  -[BKSHIDTouchRoutingPolicy setAvoidHitTesting:](v5, "setAvoidHitTesting:", [v4 decodeBoolForKey:@"shouldAvoidHitTesting"]);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"contextIDsToAlwaysSendTouches"];

  if (v9)
  {
    if ((_BKSVerifyIsArrayOfNumbers(v9) & 1) == 0)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v29 = *MEMORY[0x1E696A588];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported contextIDsToAlwaysSendTouches structure %@", v9];
      v30[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v19 = [v15 errorWithDomain:v16 code:4866 userInfo:v18];
      [v4 failWithError:v19];

      goto LABEL_12;
    }

    [(BKSHIDTouchRoutingPolicy *)v5 setContextIDsToAlwaysSendTouches:v9];
  }

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"contextIDsToExcludeFromHitTesting"];

  if (v13)
  {
    if (_BKSVerifyIsArrayOfNumbers(v13))
    {
      [(BKSHIDTouchRoutingPolicy *)v5 setContextIDsToExcludeFromHitTesting:v13];
      goto LABEL_8;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A250];
    v27 = *MEMORY[0x1E696A588];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported contextIDsToExcludeFromHitTesting structure %@", v13];
    v28 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v24 = [v20 errorWithDomain:v21 code:4866 userInfo:v23];
    [v4 failWithError:v24];

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

LABEL_8:

LABEL_9:
  v14 = v5;
LABEL_13:

  v25 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BKSHIDTouchRoutingPolicy)init
{
  v6.receiver = self;
  v6.super_class = BKSHIDTouchRoutingPolicy;
  v2 = [(BKSHIDTouchRoutingPolicy *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    settings = v2->_settings;
    v2->_settings = v3;
  }

  return v2;
}

+ (void)inspectChangesWithOldPolicy:(id)a3 newPolicy:(id)a4 usingBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 settings];
  v10 = [v8 settings];

  v11 = [MEMORY[0x1E698E770] diffFromSettings:v9 toSettings:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__BKSHIDTouchRoutingPolicy_inspectChangesWithOldPolicy_newPolicy_usingBlock___block_invoke;
  v13[3] = &unk_1E6F46550;
  v14 = v7;
  v12 = v7;
  [v11 inspectChangesWithBlock:v13];
}

@end