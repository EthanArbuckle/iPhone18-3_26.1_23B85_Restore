@interface DiagnosticLogHandleForCategory
@end

@implementation DiagnosticLogHandleForCategory

void __DiagnosticLogHandleForCategory_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.Diagnostics", "unspecified");
  v2 = DiagnosticLogHandleForCategory_logHandles;
  DiagnosticLogHandleForCategory_logHandles = v1;

  v3 = os_log_create("com.apple.Diagnostics", "host");
  v4 = qword_28088;
  qword_28088 = v3;

  v5 = os_log_create("com.apple.Diagnostics", "networking");
  v6 = qword_28090;
  qword_28090 = v5;

  v7 = os_log_create("com.apple.Diagnostics", "diagnostic");
  v8 = qword_28098;
  qword_28098 = v7;

  v9 = os_log_create("com.apple.Diagnostics", "localization");
  v10 = qword_280A0;
  qword_280A0 = v9;

  v11 = os_log_create("com.apple.Diagnostics", "ui");
  v12 = qword_280A8;
  qword_280A8 = v11;

  v13 = os_log_create("com.apple.Diagnostics", "component");
  v14 = qword_280B0;
  qword_280B0 = v13;

  v15 = os_log_create("com.apple.Diagnostics", "ids");
  v16 = qword_280B8;
  qword_280B8 = v15;

  v17 = os_log_create("com.apple.Diagnostics", "xpc");
  v18 = qword_280C0;
  qword_280C0 = v17;

  v19 = os_log_create("com.apple.Diagnostics", "unit-test");
  v20 = qword_280C8;
  qword_280C8 = v19;

  v21 = os_log_create("com.apple.Diagnostics", "device-management");
  v22 = qword_280D0;
  qword_280D0 = v21;

  qword_280D8 = os_log_create("com.apple.Diagnostics", "compositor");

  _objc_release_x1();
}

@end