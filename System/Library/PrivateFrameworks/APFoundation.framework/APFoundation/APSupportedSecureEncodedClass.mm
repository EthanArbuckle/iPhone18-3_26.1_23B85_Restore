@interface APSupportedSecureEncodedClass
+ (NSSet)classes;
+ (void)addClasses:(id)classes;
+ (void)initialize;
@end

@implementation APSupportedSecureEncodedClass

+ (NSSet)classes
{
  objc_msgSend_lock(qword_1EDBA4BA0, a2, v2, v3);
  v4 = qword_1EDBA4BD0;
  objc_msgSend_unlock(qword_1EDBA4BA0, v5, v6, v7);

  return v4;
}

+ (void)initialize
{
  v2 = [APUnfairLock alloc];
  v5 = objc_msgSend_initWithOptions_(v2, v3, 1, v4);
  v6 = qword_1EDBA4BA0;
  qword_1EDBA4BA0 = v5;

  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  qword_1EDBA4BD0 = objc_msgSend_initWithObjects_(v7, v17, v8, v18, v9, v10, v11, v12, v13, v14, v15, v16, 0);

  MEMORY[0x1EEE66BB8]();
}

+ (void)addClasses:(id)classes
{
  v3 = qword_1EDBA4BA0;
  classesCopy = classes;
  objc_msgSend_lock(v3, v5, v6, v7);
  v10 = objc_msgSend_setByAddingObjectsFromSet_(qword_1EDBA4BD0, v8, classesCopy, v9);

  v11 = qword_1EDBA4BD0;
  qword_1EDBA4BD0 = v10;

  v15 = qword_1EDBA4BA0;

  objc_msgSend_unlock(v15, v12, v13, v14);
}

@end