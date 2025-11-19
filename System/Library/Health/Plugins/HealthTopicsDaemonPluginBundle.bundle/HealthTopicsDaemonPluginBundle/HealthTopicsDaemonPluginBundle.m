uint64_t type metadata accessor for _HealthTopicsDaemonPlugin()
{
  result = qword_8130;
  if (!qword_8130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_E7C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_EBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}