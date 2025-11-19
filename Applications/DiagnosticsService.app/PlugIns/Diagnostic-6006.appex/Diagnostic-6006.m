id sub_100001180()
{
  result = DiagnosticLogHandleForCategory();
  qword_100008458 = result;
  return result;
}

id sub_10000126C()
{
  if (*&v0[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder])
  {
    v1 = *&v0[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder];
    [swift_unknownObjectRetain() unpairSessionAccessoryOnTestCompletion];
    v2 = [v0 result];
    v3.super.super.isa = sub_1000014D8().super.super.isa;
    [v2 setStatusCode:v3.super.super.isa];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000014E8();
    if (qword_100008450 != -1)
    {
      swift_once();
    }

    sub_1000014C8();
    v2 = [v0 result];
    v3.super.super.isa = sub_1000014D8().super.super.isa;
    [v2 setStatusCode:v3.super.super.isa];
  }

  return [v0 setFinished:1];
}

id sub_100001460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnpairSessionAccessoryController();
  return objc_msgSendSuper2(&v2, "dealloc");
}