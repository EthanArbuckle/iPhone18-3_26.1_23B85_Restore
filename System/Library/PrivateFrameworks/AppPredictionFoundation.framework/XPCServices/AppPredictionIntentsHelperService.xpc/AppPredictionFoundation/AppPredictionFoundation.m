int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id sub_100000E08()
{
  if (qword_10000C7A0 != -1)
  {
    sub_100002EE0();
  }

  v1 = qword_10000C798;

  return v1;
}

void sub_100000E4C(id a1)
{
  qword_10000C798 = os_log_create("com.apple.duetexpertd.atx", "general");

  _objc_release_x1();
}

id sub_100000E90()
{
  if (qword_10000C7B0 != -1)
  {
    sub_100002EF4();
  }

  v1 = qword_10000C7A8;

  return v1;
}

void sub_100000ED4(id a1)
{
  qword_10000C7A8 = os_log_create("com.apple.duetexpertd.atx", "xpc");

  _objc_release_x1();
}

id sub_100000F18()
{
  if (qword_10000C7C0 != -1)
  {
    sub_100002F08();
  }

  v1 = qword_10000C7B8;

  return v1;
}

void sub_100000F5C(id a1)
{
  qword_10000C7B8 = os_log_create("com.apple.duetexpertd.atx", "heuristic");

  _objc_release_x1();
}

id sub_100000FA0()
{
  if (qword_10000C7D0 != -1)
  {
    sub_100002F1C();
  }

  v1 = qword_10000C7C8;

  return v1;
}

void sub_100000FE4(id a1)
{
  qword_10000C7C8 = os_log_create("com.apple.duetexpertd.atx", "notifications");

  _objc_release_x1();
}

id sub_100001028()
{
  if (qword_10000C7E0 != -1)
  {
    sub_100002F30();
  }

  v1 = qword_10000C7D8;

  return v1;
}

void sub_10000106C(id a1)
{
  qword_10000C7D8 = os_log_create("com.apple.duetexpertd.mm", "GENERAL");

  _objc_release_x1();
}

id sub_1000010B0()
{
  if (qword_10000C7F0 != -1)
  {
    sub_100002F44();
  }

  v1 = qword_10000C7E8;

  return v1;
}

void sub_1000010F4(id a1)
{
  qword_10000C7E8 = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");

  _objc_release_x1();
}

id sub_100001138()
{
  if (qword_10000C800 != -1)
  {
    sub_100002F58();
  }

  v1 = qword_10000C7F8;

  return v1;
}

void sub_10000117C(id a1)
{
  qword_10000C7F8 = os_log_create("com.apple.duetexpertd.atx", "feedback");

  _objc_release_x1();
}

id sub_1000011C0()
{
  if (qword_10000C810 != -1)
  {
    sub_100002F6C();
  }

  v1 = qword_10000C808;

  return v1;
}

void sub_100001204(id a1)
{
  qword_10000C808 = os_log_create("com.apple.duetexpertd.atx", "modes");

  _objc_release_x1();
}

id sub_100001248()
{
  if (qword_10000C820 != -1)
  {
    sub_100002F80();
  }

  v1 = qword_10000C818;

  return v1;
}

void sub_10000128C(id a1)
{
  qword_10000C818 = os_log_create("com.apple.duetexpertd.atx", "hero");

  _objc_release_x1();
}

id sub_1000012D0()
{
  if (qword_10000C830 != -1)
  {
    sub_100002F94();
  }

  v1 = qword_10000C828;

  return v1;
}

void sub_100001314(id a1)
{
  qword_10000C828 = os_log_create("com.apple.duetexpertd.atx", "deletions");

  _objc_release_x1();
}

id sub_100001358()
{
  if (qword_10000C840 != -1)
  {
    sub_100002FA8();
  }

  v1 = qword_10000C838;

  return v1;
}

void sub_10000139C(id a1)
{
  qword_10000C838 = os_log_create("com.apple.duetexpertd.atx", "information");

  _objc_release_x1();
}

id sub_1000013E0()
{
  if (qword_10000C850 != -1)
  {
    sub_100002FBC();
  }

  v1 = qword_10000C848;

  return v1;
}

void sub_100001424(id a1)
{
  qword_10000C848 = os_log_create("com.apple.duetexpertd.atx", "timeline");

  _objc_release_x1();
}

id sub_100001468()
{
  if (qword_10000C860 != -1)
  {
    sub_100002FD0();
  }

  v1 = qword_10000C858;

  return v1;
}

void sub_1000014AC(id a1)
{
  qword_10000C858 = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");

  _objc_release_x1();
}

id sub_1000014F0()
{
  if (qword_10000C870 != -1)
  {
    sub_100002FE4();
  }

  v1 = qword_10000C868;

  return v1;
}

void sub_100001534(id a1)
{
  qword_10000C868 = os_log_create("com.apple.duetexpertd.atx", "relevance_model");

  _objc_release_x1();
}

id sub_100001578()
{
  if (qword_10000C880 != -1)
  {
    sub_100002FF8();
  }

  v1 = qword_10000C878;

  return v1;
}

void sub_1000015BC(id a1)
{
  qword_10000C878 = os_log_create("com.apple.duetexpertd.atx", "watch");

  _objc_release_x1();
}

id sub_100001600()
{
  if (qword_10000C890 != -1)
  {
    sub_10000300C();
  }

  v1 = qword_10000C888;

  return v1;
}

void sub_100001644(id a1)
{
  qword_10000C888 = os_log_create("com.apple.duetexpertd.atx", "UI");

  _objc_release_x1();
}

id sub_100001688()
{
  if (qword_10000C8A0 != -1)
  {
    sub_100003020();
  }

  v1 = qword_10000C898;

  return v1;
}

void sub_1000016CC(id a1)
{
  qword_10000C898 = os_log_create("com.apple.duetexpertd.atx", "blending");

  _objc_release_x1();
}

id sub_100001710()
{
  if (qword_10000C8B0 != -1)
  {
    sub_100003034();
  }

  v1 = qword_10000C8A8;

  return v1;
}

void sub_100001754(id a1)
{
  qword_10000C8A8 = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");

  _objc_release_x1();
}

id sub_100001798()
{
  if (qword_10000C8C0 != -1)
  {
    sub_100003048();
  }

  v1 = qword_10000C8B8;

  return v1;
}

void sub_1000017DC(id a1)
{
  qword_10000C8B8 = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");

  _objc_release_x1();
}

id sub_100001820()
{
  if (qword_10000C8D0 != -1)
  {
    sub_10000305C();
  }

  v1 = qword_10000C8C8;

  return v1;
}

void sub_100001864(id a1)
{
  qword_10000C8C8 = os_log_create("com.apple.duetexpertd.atx", "homescreen");

  _objc_release_x1();
}

id sub_1000018A8()
{
  if (qword_10000C8E0 != -1)
  {
    sub_100003070();
  }

  v1 = qword_10000C8D8;

  return v1;
}

void sub_1000018EC(id a1)
{
  qword_10000C8D8 = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");

  _objc_release_x1();
}

id sub_100001930()
{
  if (qword_10000C8F0 != -1)
  {
    sub_100003084();
  }

  v1 = qword_10000C8E8;

  return v1;
}

void sub_100001974(id a1)
{
  qword_10000C8E8 = os_log_create("com.apple.duetexpertd.atx", "lockscreen");

  _objc_release_x1();
}

id sub_1000019B8()
{
  if (qword_10000C900 != -1)
  {
    sub_100003098();
  }

  v1 = qword_10000C8F8;

  return v1;
}

void sub_1000019FC(id a1)
{
  qword_10000C8F8 = os_log_create("com.apple.duetexpertd.atx", "anchor");

  _objc_release_x1();
}

id sub_100001A40()
{
  if (qword_10000C910 != -1)
  {
    sub_1000030AC();
  }

  v1 = qword_10000C908;

  return v1;
}

void sub_100001A84(id a1)
{
  qword_10000C908 = os_log_create("com.apple.duetexpertd.atx", "app_prediction");

  _objc_release_x1();
}

id sub_100001AC8()
{
  if (qword_10000C920 != -1)
  {
    sub_1000030C0();
  }

  v1 = qword_10000C918;

  return v1;
}

void sub_100001B0C(id a1)
{
  qword_10000C918 = os_log_create("com.apple.duetexpertd.atx", "action_prediction");

  _objc_release_x1();
}

id sub_100001B50()
{
  if (qword_10000C930 != -1)
  {
    sub_1000030D4();
  }

  v1 = qword_10000C928;

  return v1;
}

void sub_100001B94(id a1)
{
  qword_10000C928 = os_log_create("com.apple.duetexpertd.atx", "app_library");

  _objc_release_x1();
}

id sub_100001BD8()
{
  if (qword_10000C940 != -1)
  {
    sub_1000030E8();
  }

  v1 = qword_10000C938;

  return v1;
}

void sub_100001C1C(id a1)
{
  qword_10000C938 = os_log_create("com.apple.duetexpertd.atx", "app_install");

  _objc_release_x1();
}

id sub_100001C60()
{
  if (qword_10000C950 != -1)
  {
    sub_1000030FC();
  }

  v1 = qword_10000C948;

  return v1;
}

void sub_100001CA4(id a1)
{
  qword_10000C948 = os_log_create("com.apple.duetexpertd.atx", "backup");

  _objc_release_x1();
}

id sub_100001CE8()
{
  if (qword_10000C960 != -1)
  {
    sub_100003110();
  }

  v1 = qword_10000C958;

  return v1;
}

void sub_100001D2C(id a1)
{
  qword_10000C958 = os_log_create("com.apple.duetexpertd.atx", "metrics");

  _objc_release_x1();
}

id sub_100001D70()
{
  if (qword_10000C970 != -1)
  {
    sub_100003124();
  }

  v1 = qword_10000C968;

  return v1;
}

void sub_100001DB4(id a1)
{
  qword_10000C968 = os_log_create("com.apple.duetexpertd.atx", "trial_assets");

  _objc_release_x1();
}

id sub_100001DF8()
{
  if (qword_10000C980 != -1)
  {
    sub_100003138();
  }

  v1 = qword_10000C978;

  return v1;
}

void sub_100001E3C(id a1)
{
  qword_10000C978 = os_log_create("com.apple.duetexpertd.atx", "notification_management");

  _objc_release_x1();
}

id sub_100001E80()
{
  if (qword_10000C990 != -1)
  {
    sub_10000314C();
  }

  v1 = qword_10000C988;

  return v1;
}

void sub_100001EC4(id a1)
{
  qword_10000C988 = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");

  _objc_release_x1();
}

id sub_100001F08()
{
  if (qword_10000C9A0 != -1)
  {
    sub_100003160();
  }

  v1 = qword_10000C998;

  return v1;
}

void sub_100001F4C(id a1)
{
  qword_10000C998 = os_log_create("com.apple.duetexpertd.atx", "intents_helper");

  _objc_release_x1();
}

id sub_100001F90()
{
  if (qword_10000C9B0 != -1)
  {
    sub_100003174();
  }

  v1 = qword_10000C9A8;

  return v1;
}

void sub_100001FD4(id a1)
{
  qword_10000C9A8 = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");

  _objc_release_x1();
}

id sub_100002018()
{
  if (qword_10000C9C0 != -1)
  {
    sub_100003188();
  }

  v1 = qword_10000C9B8;

  return v1;
}

void sub_10000205C(id a1)
{
  qword_10000C9B8 = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  _objc_release_x1();
}

id sub_1000020A0()
{
  if (qword_10000C9D0 != -1)
  {
    sub_10000319C();
  }

  v1 = qword_10000C9C8;

  return v1;
}

void sub_1000020E4(id a1)
{
  qword_10000C9C8 = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");

  _objc_release_x1();
}

id sub_100002128()
{
  if (qword_10000C9E0 != -1)
  {
    sub_1000031B0();
  }

  v1 = qword_10000C9D8;

  return v1;
}

void sub_10000216C(id a1)
{
  qword_10000C9D8 = os_log_create("com.apple.duetexpertd.atx", "time");

  _objc_release_x1();
}

id sub_1000021B0()
{
  if (qword_10000C9F0 != -1)
  {
    sub_1000031C4();
  }

  v1 = qword_10000C9E8;

  return v1;
}

void sub_1000021F4(id a1)
{
  qword_10000C9E8 = os_log_create("com.apple.duetexpertd.atx", "contextualengine");

  _objc_release_x1();
}

id sub_100002238()
{
  if (qword_10000CA00 != -1)
  {
    sub_1000031D8();
  }

  v1 = qword_10000C9F8;

  return v1;
}

void sub_10000227C(id a1)
{
  qword_10000C9F8 = os_log_create("com.apple.duetexpertd.atx", "usage_insights");

  _objc_release_x1();
}

id sub_1000022C0()
{
  if (qword_10000CA10 != -1)
  {
    sub_1000031EC();
  }

  v1 = qword_10000CA08;

  return v1;
}

void sub_100002304(id a1)
{
  qword_10000CA08 = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");

  _objc_release_x1();
}

id sub_100002348()
{
  if (qword_10000CA20 != -1)
  {
    sub_100003200();
  }

  v1 = qword_10000CA18;

  return v1;
}

void sub_10000238C(id a1)
{
  qword_10000CA18 = os_log_create("com.apple.duetexpertd.atx", "settings_actions");

  _objc_release_x1();
}

id sub_1000023D0()
{
  if (qword_10000CA30 != -1)
  {
    sub_100003214();
  }

  v1 = qword_10000CA28;

  return v1;
}

void sub_100002414(id a1)
{
  qword_10000CA28 = os_log_create("com.apple.duetexpertd.atx", "client_donations");

  _objc_release_x1();
}

id sub_100002458()
{
  if (qword_10000CA40 != -1)
  {
    sub_100003228();
  }

  v1 = qword_10000CA38;

  return v1;
}

void sub_10000249C(id a1)
{
  qword_10000CA38 = os_log_create("com.apple.duetexpertd.atx", "carPlay");

  _objc_release_x1();
}

id sub_1000024E0()
{
  if (qword_10000CA50 != -1)
  {
    sub_10000323C();
  }

  v1 = qword_10000CA48;

  return v1;
}

void sub_100002524(id a1)
{
  qword_10000CA48 = os_log_create("com.apple.duetexpertd.atx", "screenEntities");

  _objc_release_x1();
}

id sub_100002568()
{
  if (qword_10000CA60 != -1)
  {
    sub_100003250();
  }

  v1 = qword_10000CA58;

  return v1;
}

void sub_1000025AC(id a1)
{
  qword_10000CA58 = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");

  _objc_release_x1();
}

id sub_1000025F0()
{
  if (qword_10000CA70 != -1)
  {
    sub_100003264();
  }

  v1 = qword_10000CA68;

  return v1;
}

void sub_100002634(id a1)
{
  qword_10000CA68 = os_log_create("com.apple.duetexpertd.atx", "inference");

  _objc_release_x1();
}

id sub_100002678()
{
  if (qword_10000CA80 != -1)
  {
    sub_100003278();
  }

  v1 = qword_10000CA78;

  return v1;
}

void sub_1000026BC(id a1)
{
  qword_10000CA78 = os_log_create("com.apple.duetexpertd.atx", "menuItems");

  _objc_release_x1();
}

void sub_10000328C()
{
  sub_100002E9C();
  sub_100002EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000032FC()
{
  sub_100002E9C();
  sub_100002EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000336C()
{
  sub_100002E9C();
  sub_100002EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000033DC()
{
  sub_100002EC4();
  sub_100002EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000344C()
{
  sub_100002EC4();
  sub_100002EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}