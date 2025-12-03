@interface VoucherStore
+ (VoucherStore)sharedInstance;
- (VoucherStore)init;
- (void)insertVoucher:(id)voucher forExternalID:(id)d;
- (void)removeVoucherForExternalID:(id)d;
- (void)usingVoucherForExternalID:(id)d applyQOSClass:(unsigned int)class executeBlock:(id)block;
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

- (void)insertVoucher:(id)voucher forExternalID:(id)d
{
  voucherCopy = voucher;
  dCopy = d;
  if (qword_1003D4290 != -1)
  {
    sub_1002CD93C();
  }

  v8 = qword_1003D4248;
  if (os_log_type_enabled(qword_1003D4248, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CD950(dCopy, voucherCopy, v8);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_vouchers setObject:voucherCopy forKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeVoucherForExternalID:(id)d
{
  dCopy = d;
  if (qword_1003D4290 != -1)
  {
    sub_1002CD93C();
  }

  v5 = qword_1003D4248;
  if (os_log_type_enabled(qword_1003D4248, OS_LOG_TYPE_DEBUG))
  {
    sub_1002CD9D8(dCopy, v5);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_vouchers setObject:0 forKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)usingVoucherForExternalID:(id)d applyQOSClass:(unsigned int)class executeBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_vouchers objectForKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);

  if (qword_1003D4290 != -1)
  {
    sub_1002CD93C();
  }

  v12 = qword_1003D4248;
  if (os_log_type_enabled(qword_1003D4248, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = dCopy;
    v18 = 1024;
    classCopy = class;
    v20 = 2112;
    v21 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "(VoucherStore) Executing block for externalID: %@, QOS(0x%x) Voucher %@", buf, 0x1Cu);
  }

  v15 = blockCopy;
  v13 = blockCopy;
  v14 = dispatch_block_create_with_voucher_and_qos_class();
  v14[2]();
}

@end