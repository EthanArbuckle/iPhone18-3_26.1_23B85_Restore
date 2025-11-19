@interface OctaneActionContext
+ (id)contextWithBundleID:(id)a3;
+ (id)contextWithBundleID:(id)a3 transactionID:(unint64_t)a4;
- (OctaneActionContext)init;
@end

@implementation OctaneActionContext

- (OctaneActionContext)init
{
  v8.receiver = self;
  v8.super_class = OctaneActionContext;
  v2 = [(OctaneActionContext *)&v8 init];
  if (v2)
  {
    v3 = +[NSXPCConnection currentConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = +[NSUUID lib_shortLogKey];
    logKey = v2->_logKey;
    v2->_logKey = v5;

    v2->_transactionID = -1;
  }

  return v2;
}

+ (id)contextWithBundleID:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 copy];

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)contextWithBundleID:(id)a3 transactionID:(unint64_t)a4
{
  result = [OctaneActionContext contextWithBundleID:a3];
  *(result + 4) = a4;
  return result;
}

@end