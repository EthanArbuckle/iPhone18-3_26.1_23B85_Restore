int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for Bootstrap();
  sub_10000106C(&qword_100008090, &unk_100001180);
  v3 = type metadata accessor for RendererServices();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100001170;
  (*(v4 + 104))(v7 + v6, enum case for RendererServices.widgets(_:), v3);
  static Bootstrap.startApplication(supportedServices:)();

  return 0;
}

uint64_t sub_10000106C(uint64_t *a1, uint64_t *a2)
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