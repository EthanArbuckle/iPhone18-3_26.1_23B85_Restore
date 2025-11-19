@interface DefaultObserver
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DefaultObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v11 = objc_msgSend_valueForKey_(v9, v10, v8);
  if (qword_1EAFE38A0 != -1)
  {
    sub_19B7A35BC();
  }

  v12 = qword_1EAFE3898;
  if (os_log_type_enabled(qword_1EAFE3898, OS_LOG_TYPE_INFO))
  {
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[CMMslDefaultObserver] Received KVO for key,%{public}@,value,%{public}@", &v14, 0x16u);
  }

  sub_19B4C5788(a6, v8, v11);

  v13 = *MEMORY[0x1E69E9840];
}

@end