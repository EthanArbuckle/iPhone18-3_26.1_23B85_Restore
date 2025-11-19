@interface CKUserDefaults
+ (id)CKUserDefaults;
+ (void)performAtomicDefaultsOperation:(id)a3;
@end

@implementation CKUserDefaults

+ (id)CKUserDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1884215A4;
  block[3] = &unk_1E70BC418;
  block[4] = a1;
  if (qword_1ED4B6750 != -1)
  {
    dispatch_once(&qword_1ED4B6750, block);
  }

  v2 = qword_1ED4B6748;

  return v2;
}

+ (void)performAtomicDefaultsOperation:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&unk_1ED4B6778);
  v6 = objc_msgSend_CKUserDefaults(a1, v4, v5);
  v7[2](v7, v6);

  os_unfair_lock_unlock(&unk_1ED4B6778);
}

@end