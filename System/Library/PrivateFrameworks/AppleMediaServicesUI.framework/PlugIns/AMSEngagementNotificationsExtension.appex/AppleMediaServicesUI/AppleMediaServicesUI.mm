id sub_100001068(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10000122C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for UserNotificationViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100001148(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UserNotificationViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000011D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}