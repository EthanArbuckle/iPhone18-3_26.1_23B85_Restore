void sub_1F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_210C(id a1)
{
  qword_D0F0 = [[NSSet alloc] initWithObjects:{@"HOST", 0}];

  _objc_release_x1();
}

void sub_3CD8(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSAssertionHandler currentHandler];
  WeakRetained = objc_loadWeakRetained(a1);
  [v7 handleFailureInMethod:a2 object:a3 file:@"LDAPSettingsSearchBaseController.m" lineNumber:74 description:{@"My parent is of unknown origin, is class %@", objc_opt_class()}];
}