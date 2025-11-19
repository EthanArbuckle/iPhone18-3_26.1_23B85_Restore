void sub_1E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3848(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSAssertionHandler currentHandler];
  WeakRetained = objc_loadWeakRetained(a1);
  [v7 handleFailureInMethod:a2 object:a3 file:@"DAVSettingsAdvancedController.m" lineNumber:31 description:{@"My parent is of unknown origin, is class %@", objc_opt_class()}];
}