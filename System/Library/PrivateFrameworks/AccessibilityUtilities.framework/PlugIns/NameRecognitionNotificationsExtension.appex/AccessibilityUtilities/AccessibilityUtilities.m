uint64_t sub_100001410()
{
  v0 = sub_100001B04();
  sub_100001A80(v0, qword_100008488);
  sub_100001998(v0, qword_100008488);
  return sub_100001AF4();
}

id NameRecognitionNotificationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100001B14();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NameRecognitionNotificationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100001B14();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id NameRecognitionNotificationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id NameRecognitionNotificationViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100001820(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for NameRecognitionNotificationViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

void _s37NameRecognitionNotificationsExtension0aB26NotificationViewControllerC10didReceiveyySo14UNNotificationCF_0(void *a1)
{
  if (qword_100008480 != -1)
  {
    swift_once();
  }

  v2 = sub_100001B04();
  sub_100001998(v2, qword_100008488);
  v3 = a1;
  oslog = sub_100001AE4();
  v4 = sub_100001B34();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Received Notification: %@", v5, 0xCu);
    sub_1000019D0(v6);
  }
}

uint64_t sub_100001998(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000019D0(uint64_t a1)
{
  v2 = sub_100001A38(&qword_100008418, &qword_100001E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001A38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100001A80(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}