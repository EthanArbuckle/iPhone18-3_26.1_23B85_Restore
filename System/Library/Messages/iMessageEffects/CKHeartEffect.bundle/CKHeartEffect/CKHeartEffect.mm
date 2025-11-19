void sub_FDC()
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v0 = [v2 URLForResource:@"HeartSoundEffect" withExtension:@"m4r"];
  v1 = qword_8968;
  qword_8968 = v0;
}

void sub_2410(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 format];
  [v3 bounds];
  [v2 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}