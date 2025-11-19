id _MedicalIDDaemonPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _MedicalIDDaemonPlugin.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_E44(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id _MedicalIDDaemonPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for _MedicalIDDaemonPlugin()
{
  result = qword_8130;
  if (!qword_8130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}