void sub_10000106C(id a1)
{
  v1 = [TFContainer alloc];
  v2 = [[NUExtensionFrameworkAssembly alloc] initWithExtensionContextProvider:0];
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [v1 initWithBundleAssemblies:v3 assemblies:&__NSArray0__struct];
  v5 = qword_100008660;
  qword_100008660 = v4;
}

void sub_1000014C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [NSError naq_errorFailedValidationForIdentifier:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}