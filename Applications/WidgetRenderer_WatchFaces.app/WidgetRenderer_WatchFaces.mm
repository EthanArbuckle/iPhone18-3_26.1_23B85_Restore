int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "May it be a light to you in dark places…", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  type metadata accessor for Bootstrap();
  sub_1000011C4(&qword_100008090, &unk_100001360);
  v11 = type metadata accessor for RendererServices();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100001350;
  (*(v12 + 104))(v15 + v14, enum case for RendererServices.widgets(_:), v11);
  static Bootstrap.startApplication(supportedServices:)();

  return 0;
}

uint64_t sub_1000011C4(uint64_t *a1, uint64_t *a2)
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