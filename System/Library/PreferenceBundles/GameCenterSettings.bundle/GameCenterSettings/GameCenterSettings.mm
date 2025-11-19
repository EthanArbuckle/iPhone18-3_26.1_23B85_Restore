SEL sub_2124(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"%@:", a1];
  v2 = NSSelectorFromString(v1);

  return v2;
}

SEL sub_217C(void *a1)
{
  v1 = a1;
  v2 = [v1 substringToIndex:1];
  v3 = [v2 uppercaseString];

  v4 = [v1 substringFromIndex:1];

  v5 = [NSString stringWithFormat:@"set%@%@:withSpecifier:", v3, v4];
  v6 = NSSelectorFromString(v5);

  return v6;
}

void sub_2220(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_2124(v3);
  v6 = sub_217C(v3);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_249C;
    v15[3] = &unk_42A8;
    v16 = v3;
    v7 = objc_retainBlock(v15);
    v8 = imp_implementationWithBlock(v7);

    v9 = objc_opt_class();
    class_addMethod(v9, v5, v8, "@@:@");
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_24A8;
    v13[3] = &unk_42D0;
    v14 = v3;
    v10 = objc_retainBlock(v13);
    v11 = imp_implementationWithBlock(v10);

    v12 = objc_opt_class();
    class_addMethod(v12, v6, v11, "v@:@@");
  }
}

unint64_t sub_24EC()
{
  result = qword_8310;
  if (!qword_8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8310);
  }

  return result;
}

uint64_t sub_255C()
{
  v1 = sub_2B40(&qword_8318, &qword_38A0);
  v2 = sub_2EC8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v18 - v7;

  sub_2B40(&qword_8320, &qword_38A8);
  v9 = sub_2F30();
  v10 = sub_2F10();
  sub_2EB0();
  v13 = sub_2B90(v11, v12);
  sub_2E98();
  v16 = sub_2B90(v14, v15);
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v13;
  v18[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_2FA0();
  sub_2D78();

  sub_2F60();
  return (*(v4 + 8))(v8, v0);
}

uint64_t sub_2740()
{
  v1 = sub_2F30();
  v2 = sub_2EC8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F20();
  sub_2F10();
  sub_2EB0();
  sub_2B90(v9, v10);
  sub_2E98();
  sub_2B90(v11, v12);
  sub_2F50();
  return (*(v4 + 8))(v8, v0);
}

uint64_t sub_2880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2F40();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2EE0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  sub_2FD0();
  v3[11] = sub_2FC0();
  v11 = sub_2FB0();

  return _swift_task_switch(sub_29D4, v11, v10);
}

uint64_t sub_29D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v12 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  sub_2F80();
  sub_2EF0();
  (*(v4 + 8))(v2, v3);
  sub_2F70();
  sub_2F90();
  (*(v6 + 8))(v5, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2AD8()
{
  v0 = sub_2F10();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2F00();
}

uint64_t sub_2B18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2AD8();
  *a1 = result;
  return result;
}

uint64_t sub_2B40(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2B90(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2BD8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2C84;

  return sub_2880(a1, a2, v2);
}

uint64_t sub_2C84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2D78()
{
  result = qword_8338;
  if (!qword_8338)
  {
    sub_2DDC(&qword_8318, &qword_38A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8338);
  }

  return result;
}

uint64_t sub_2DDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2E34()
{
  sub_2DDC(&qword_8318, &qword_38A0);
  sub_2D78();
  return swift_getOpaqueTypeConformance2();
}