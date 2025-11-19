@interface VoucherStore
+ (VoucherStore)sharedInstance;
- (VoucherStore)init;
- (void)insertVoucher:(id)a3 forExternalID:(id)a4;
- (void)removeVoucherForExternalID:(id)a3;
- (void)usingVoucherForExternalID:(id)a3 applyQOSClass:(unsigned int)a4 executeBlock:(id)a5;
@end

@implementation VoucherStore

+ (VoucherStore)sharedInstance
{
  if (qword_1003D4238 != -1)
  {
    sub_1002CD928();
  }

  v3 = qword_1003D4240;

  return v3;
}

- (VoucherStore)init
{
  v6.receiver = self;
  v6.super_class = VoucherStore;
  v2 = [(VoucherStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    vouchers = v2->_vouchers;
    v2->_vouchers = v3;
  }

  return v2;
}

- (void)insertVoucher:(id)a3 forExternalID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1003D4290 != -1)
  {
    sub_1002CD93C();
  }

  v8 = qword_1003D4248;
  if (os_log_type_enabled(qword_1003D4248, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CD950(v7, v6, v8);
  }

  v9 = self;
  objc_sync_enter(v9);
  [(NSMutableDictionary *)v9->_vouchers setObject:v6 forKeyedSubscript:v7];
  objc_sync_exit(v9);
}

- (void)removeVoucherForExternalID:(id)a3
{
  v4 = a3;
  if (qword_1003D4290 != -1)
  {
    sub_1002CD93C();
  }

  v5 = qword_1003D4248;
  if (os_log_type_enabled(qword_1003D4248, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CD9D8(v4, v5);
  }

  v6 = self;
  objc_sync_enter(v6);
  [(NSMutableDictionary *)v6->_vouchers setObject:0 forKeyedSubscript:v4];
  objc_sync_exit(v6);
}

- (void)usingVoucherForExternalID:(id)a3 applyQOSClass:(unsigned int)a4 executeBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)v10->_vouchers objectForKeyedSubscript:v8];
  objc_sync_exit(v10);

  if (qword_1003D4290 != -1)
  {
    sub_1002CD93C();
  }

  v12 = qword_1003D4248;
  if (os_log_type_enabled(qword_1003D4248, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = v8;
    v18 = 1024;
    v19 = a4;
    v20 = 2112;
    v21 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "(VoucherStore) Executing block for externalID: %@, QOS(0x%x) Voucher %@", buf, 0x1Cu);
  }

  v15 = v9;
  v13 = v9;
  v14 = dispatch_block_create_with_voucher_and_qos_class();
  v14[2]();
}

@end