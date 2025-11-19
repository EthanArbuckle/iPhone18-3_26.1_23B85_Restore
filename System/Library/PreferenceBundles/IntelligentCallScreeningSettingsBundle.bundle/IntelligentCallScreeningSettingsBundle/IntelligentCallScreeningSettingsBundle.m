void sub_173C(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 integerValue];

  v4 = [*(a1 + 40) configurationProvider];
  [v4 setSelectedIntelligentCallScreeningMenuOptionForPhone:v3];
}

id PHDefaultLog()
{
  if (qword_CA28 != -1)
  {
    sub_2C74();
  }

  v1 = qword_CA20;

  return v1;
}

void sub_19D8(id a1)
{
  qword_CA20 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_CA38 != -1)
  {
    sub_2C88();
  }

  v1 = qword_CA30;

  return v1;
}

void sub_1A60(id a1)
{
  qword_CA30 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_CA48 != -1)
  {
    sub_2C9C();
  }

  v1 = qword_CA40;

  return v1;
}

void sub_1AE8(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_CA40;
  qword_CA40 = v1;
}

void sub_1CF8(id a1)
{
  v1 = [IntelligentCallScreeningMenuCellOption alloc];
  v2 = [&off_8580 stringValue];
  v3 = [(IntelligentCallScreeningMenuCellOption *)v1 initWithTitleKey:@"INTELLIGENT_CALL_SCREENING_OPTION_NEVER_TITLE" explanationKey:@"INTELLIGENT_CALL_SCREENING_OPTION_NEVER_EXPLANATION" optionID:v2];
  v4 = [IntelligentCallScreeningMenuCellOption alloc];
  v5 = [&off_8598 stringValue];
  v6 = [(IntelligentCallScreeningMenuCellOption *)v4 initWithTitleKey:@"INTELLIGENT_CALL_SCREENING_OPTION_ASK_TITLE" explanationKey:@"INTELLIGENT_CALL_SCREENING_OPTION_ASK_EXPLANATION" optionID:v5];
  v12[1] = v6;
  v7 = [IntelligentCallScreeningMenuCellOption alloc];
  v8 = [&off_85B0 stringValue];
  v9 = [(IntelligentCallScreeningMenuCellOption *)v7 initWithTitleKey:@"INTELLIGENT_CALL_SCREENING_OPTION_SILENCE_TITLE" explanationKey:@"INTELLIGENT_CALL_SCREENING_OPTION_SILENCE_EXPLANATION" optionID:v8];
  v12[2] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:3];
  v11 = qword_CA50;
  qword_CA50 = v10;
}