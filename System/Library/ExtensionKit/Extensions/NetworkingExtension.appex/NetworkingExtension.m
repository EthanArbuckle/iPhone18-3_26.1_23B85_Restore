int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for NetworkingProcessExtension();
  sub_100007330(&qword_10000C118, v3, type metadata accessor for NetworkingProcessExtension);
  sub_1000077B4();
  return 0;
}

uint64_t sub_100007330(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100007378@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

uint64_t sub_100007408()
{
  v0 = type metadata accessor for NetworkingProcessExtension();
  v2 = sub_100007330(&qword_10000C158, v1, type metadata accessor for NetworkingProcessExtension);

  return NetworkingExtension.configuration.getter(v0, v2);
}

id sub_100007518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkingProcessExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}