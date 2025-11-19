uint64_t getEnumTagSinglePayload for Placement.Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Placement.Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_23BDE1E38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23BDE1E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BE326D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Timeline(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23BDE1F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BE326D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Timeline(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23BDE20DC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23BDE2184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BE326D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    v11 = (v10 >> 5) & 0xFFFFFF87 | (8 * ((v10 >> 1) & 0xF));
    v12 = v11 ^ 0x7F;
    v13 = 128 - v11;
    if (v12 >= 0x7B)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_23BDE2254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BE326D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = a1 + *(a4 + 20);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
  }

  return result;
}

uint64_t sub_23BDE2448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BE326D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23BDE2504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BE326D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23BDE25BC()
{
  MEMORY[0x23EEBF0C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BDE25F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BDE2630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Scene();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23BE32698();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23BDE2720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Scene();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23BE32698();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23BDE281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BE326D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23BDE28D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BE326D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 3;
  }

  return result;
}

uint64_t sub_23BDE298C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BE326D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23BDE29F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BE326D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23BDE2AC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BDE2B00()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BDE2B48()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23BDE2B90()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23BDE2BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BE326D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Timing(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23BDE2D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BE326D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Timing(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23BDE2E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Timeline(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23BDE2EE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Timeline(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23BDE2F84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23BE32698();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23BDE3030(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23BE32698();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23BDE30D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for TimeAttributes(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_23BDE652C(&qword_27E1C8A28);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_23BDE3210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v8 = type metadata accessor for TimeAttributes(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23BDE652C(&qword_27E1C8A28);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

id sub_23BDE33A0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1C97A8);
  if (qword_27E1C97B0)
  {
    v6 = qword_27E1C97B0 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v2, v3, v4, v5) != qword_27E1C97B8)
  {
    qword_27E1C97B0 = v2;
    qword_27E1C97B8 = objc_msgSend_version(v2, v3, v4, v5);
    v7 = _EnumValueRange();
    v8 = qword_27E1C97A0;
    qword_27E1C97A0 = v7;
  }

  v9 = qword_27E1C97A0;
  os_unfair_lock_unlock(&unk_27E1C97A8);

  return v9;
}

void sub_23BDE3558(uint64_t a1, const char *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284E98968;
  v4[1] = &unk_284E98980;
  v5[0] = @"daily";
  v5[1] = @"sunday";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 2);
  v3 = qword_27E1C97C0;
  qword_27E1C97C0 = v2;
}

id sub_23BDE360C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1C97D8);
  if (qword_27E1C97E0)
  {
    v6 = qword_27E1C97E0 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || objc_msgSend_version(v2, v3, v4, v5) != qword_27E1C97E8)
  {
    qword_27E1C97E0 = v2;
    qword_27E1C97E8 = objc_msgSend_version(v2, v3, v4, v5);
    v7 = _EnumValueRange();
    v8 = qword_27E1C97D0;
    qword_27E1C97D0 = v7;
  }

  v9 = qword_27E1C97D0;
  os_unfair_lock_unlock(&unk_27E1C97D8);

  return v9;
}

void sub_23BDE37BC(uint64_t a1, const char *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284E98998;
  v4[1] = &unk_284E989B0;
  v5[0] = @"none";
  v5[1] = @"ticks";
  v4[2] = &unk_284E989C8;
  v4[3] = &unk_284E989E0;
  v5[2] = @"numerals-i";
  v5[3] = @"numerals-ii";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 4);
  v3 = qword_27E1C97F0;
  qword_27E1C97F0 = v2;
}

void sub_23BDE3F74(uint64_t a1, void *a2, uint64_t a3)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D2C020];
  v6 = a2;
  if (a3)
  {
    v8 = objc_msgSend_placementWithWatchOS12Group_zOrder_(v4, v5, 15, 4000);
    v17 = v8;
    v9 = &v17;
  }

  else
  {
    v8 = objc_msgSend_placementWithWatchOS12Group_zOrder_(v4, v5, 15, 9000);
    v18[0] = v8;
    v9 = v18;
  }

  v10 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v7, 19, 4000);
  v9[1] = v10;
  v12 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v11, 3, 4000);
  v9[2] = v12;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v9, 3);
  objc_msgSend_setCurationPlacements_(v6, v15, v14, v16);
}

void sub_23BDE472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BDE4750(uint64_t a1, void *a2, id *a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_layoutForDateChange(WeakRetained[109], v6, v7, v8);
  }
}

__n128 initializeBufferWithCopyOfBuffer for Placement.Point(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23BDE5530(uint64_t a1, id *a2)
{
  result = sub_23BE328A8();
  *a2 = 0;
  return result;
}

uint64_t sub_23BDE55A8(uint64_t a1, id *a2)
{
  v3 = sub_23BE328B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23BDE5628@<X0>(uint64_t *a1@<X8>)
{
  sub_23BE328C8();
  v2 = sub_23BE32898();

  *a1 = v2;
  return result;
}

uint64_t sub_23BDE566C()
{
  v0 = sub_23BE328C8();
  v1 = MEMORY[0x23EEBE180](v0);

  return v1;
}

uint64_t sub_23BDE56A8()
{
  sub_23BE328C8();
  sub_23BE328F8();
}

uint64_t sub_23BDE56FC()
{
  sub_23BE328C8();
  sub_23BE32DC8();
  sub_23BE328F8();
  v0 = sub_23BE32E08();

  return v0;
}

uint64_t sub_23BDE5770()
{
  swift_getWitnessTable();

  return sub_23BE32788();
}

uint64_t sub_23BDE57DC()
{
  v1 = *v0;
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](v1);
  return sub_23BE32E08();
}

uint64_t sub_23BDE5850()
{
  v1 = *v0;
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](v1);
  return sub_23BE32E08();
}

uint64_t sub_23BDE58DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BDE59E8()
{
  v0 = sub_23BE328C8();
  v2 = v1;
  if (v0 == sub_23BE328C8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23BE32D48();
  }

  return v5 & 1;
}

uint64_t sub_23BDE5A7C()
{
  swift_getWitnessTable();

  return sub_23BE32788();
}

uint64_t sub_23BDE5AE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23BE32898();

  *a1 = v2;
  return result;
}

uint64_t sub_23BDE5B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BE328C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BDE5B5C(uint64_t a1)
{
  v2 = sub_23BDE58DC(&qword_27E1C7BC8, type metadata accessor for URLResourceKey);
  v3 = sub_23BDE58DC(&unk_27E1C7BD0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BDE5CD4()
{
  sub_23BE32DC8();
  swift_getWitnessTable();
  sub_23BE32798();
  return sub_23BE32E08();
}

__n128 sub_23BDE5DBC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BDE5DC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BDE5DE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_23BDE5E3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23BDE6000()
{
  v1 = *v0;
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](v1);
  return sub_23BE32E08();
}

uint64_t sub_23BDE6048()
{
  v1 = *v0;
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](v1);
  return sub_23BE32E08();
}

uint64_t sub_23BDE608C()
{
  sub_23BDE6478(v0 + 120);
  v1 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion11SceneScorer_date;
  v2 = sub_23BE32698();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_23BDE64C4(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion11SceneScorer_result);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SceneScorer()
{
  result = qword_27E1C7C48;
  if (!qword_27E1C7C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDE6170()
{
  sub_23BE32698();
  if (v0 <= 0x3F)
  {
    sub_23BDE625C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23BDE625C()
{
  if (!qword_27E1C7C58)
  {
    type metadata accessor for Scene();
    v0 = sub_23BE32A98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C7C58);
    }
  }
}

uint64_t getEnumTagSinglePayload for SceneScorer.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneScorer.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23BDE6418()
{
  result = qword_27E1C7C60;
  if (!qword_27E1C7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7C60);
  }

  return result;
}

uint64_t sub_23BDE6478(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23BDE64C4(uint64_t a1)
{
  v2 = sub_23BDE652C(&qword_27E1C7C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDE652C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_23BDE6678()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  v3 = 1;
  v26 = v2;
  [v2 setDisableActions_];
  v4 = sub_23BDE78B8();
  v27 = [v4 CGColor];

  v28 = OBJC_IVAR___NTKEsterbrookSceneDialView_density;
  v5 = OBJC_IVAR___NTKEsterbrookSceneDialView_hourLayers;
  v6 = *&v1[OBJC_IVAR___NTKEsterbrookSceneDialView_layout + 24];
  v30 = *&v1[OBJC_IVAR___NTKEsterbrookSceneDialView_layout + 32];
  v29 = *&v1[OBJC_IVAR___NTKEsterbrookSceneDialView_layout + 40];
  do
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    sub_23BDE652C(&qword_27E1C7C98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BE36620;
    *(inited + 32) = 0x73646E756F62;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *(inited + 56) = 0x73746E65746E6F63;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *(inited + 80) = 0xD000000000000015;
    *(inited + 88) = 0x800000023BE34A80;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *(inited + 104) = 0x656D617266;
    *(inited + 112) = 0xE500000000000000;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *(inited + 128) = 0x7974696361706FLL;
    *(inited + 136) = 0xE700000000000000;
    *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *(inited + 152) = 0x6E6F697469736F70;
    *(inited + 160) = 0xE800000000000000;
    *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    sub_23BE2BDE8(inited);
    swift_setDeallocating();
    sub_23BDE652C(&qword_27E1C7CA0);
    swift_arrayDestroy();
    sub_23BDE652C(&qword_27E1C7CA8);
    v12 = sub_23BE32848();

    [v10 setActions_];

    v13 = 0.0;
    if (*(v6 + 16))
    {
      v14 = sub_23BE2C8A8(*&v1[v28]);
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      if (v18)
      {
        v19 = (*(v6 + 56) + 32 * v14);
        v13 = *v19;
        v15 = v19[1];
        v16 = v19[2];
        v17 = v19[3];
      }
    }

    else
    {
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
    }

    [v10 setFrame_];
    [v10 setContentsMultiplyColor_];
    v20 = v29;
    if (*(v30 + 16))
    {
      v21 = sub_23BE2C8A8(*&v1[v28]);
      v20 = v29;
      if (v22)
      {
        v23 = *(*(v30 + 56) + 8 * v21);
        v20 = v29;
        if (*(v23 + 16))
        {
          v24 = sub_23BE28F2C(v3);
          v20 = v29;
          if (v25)
          {
            v20 = *(*(v23 + 56) + 16 * v24);
          }
        }
      }
    }

    [v10 setPosition_];
    v7 = [v1 layer];
    [v7 addSublayer_];

    swift_beginAccess();
    v8 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *&v1[v5];
    *&v1[v5] = 0x8000000000000000;
    sub_23BE2AA3C(v8, v3, isUniquelyReferenced_nonNull_native);
    *&v1[v5] = v31;
    swift_endAccess();

    ++v3;
  }

  while (v3 != 13);
  [v26 commit];
}

void sub_23BDE6AE4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = a1;
  if (a1 != a2)
  {
    v8 = *(v3 + OBJC_IVAR___NTKEsterbrookSceneDialView_layout + 32);
    v9 = *(v3 + OBJC_IVAR___NTKEsterbrookSceneDialView_layout + 40);
    v10 = *(v3 + OBJC_IVAR___NTKEsterbrookSceneDialView_layout + 48);
    v11 = objc_opt_self();

    v72 = v8;

    [v11 begin];
    v12 = 1;
    v64 = v11;
    [v11 setDisableActions_];
    v13 = OBJC_IVAR___NTKEsterbrookSceneDialView_hourLayers;
    v70 = OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress;
    swift_beginAccess();
    v14 = a3 >= 0.0;
    v15 = a3 <= 0.2;
    v16 = a3 > 1.0;
    if ((v5 | a2) > 1)
    {
      v16 = 1;
    }

    v17 = 0.0;
    if ((v5 | a2) > 1)
    {
      v17 = 1.0;
    }

    v69 = v17;
    if (a3 < 0.5)
    {
      v16 = 1;
    }

    v68 = v16;
    v18 = 2;
    if (!v14 || a3 > 0.6)
    {
      v18 = 3;
    }

    if (a2 != 3)
    {
      v18 = a2;
    }

    v63 = v14 && v15;
    if (v14 && v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (a2 != 2)
    {
      v19 = a2;
    }

    v66 = v19;
    v67 = v18;
    v20 = 0x277D75000;
    v21 = 0x278B9A000uLL;
    v22 = 0x278B9A000uLL;
    v23 = 0x278B9A000;
    v62 = 0x3FF199999999999ALL;
    v65 = v5;
    while (1)
    {
      v27 = *(v4 + v13);
      if (!*(v27 + 16))
      {
        goto LABEL_25;
      }

      v28 = sub_23BE28F2C(v12);
      if ((v29 & 1) == 0)
      {
        goto LABEL_25;
      }

      v30 = *(*(v27 + 56) + 8 * v28);
      sub_23BE21D20();
      [v30 setFrame_];
      if (v5 == 2)
      {
        v31 = v67;
      }

      else
      {
        v31 = a2;
        if (v5 == 1)
        {
          v31 = v66;
        }
      }

      v32 = sub_23BDE7B08(v12, v31);
      if (v32)
      {
        v33 = v32;
        v34 = [v32 CGImage];

        if (v34)
        {
          v73 = v34;
          type metadata accessor for CGImage(0);
          v34 = sub_23BE32D28();
        }

        v20 = 0x277D75000;
      }

      else
      {
        v34 = 0;
      }

      [v30 setContents_];
      swift_unknownObjectRelease();
      v35 = *(v4 + v70);
      if (v35 == 0.0)
      {
        v36 = [objc_allocWithZone(*(v20 + 840)) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
      }

      else
      {
        v37 = v22;
        v38 = v21;
        v39 = objc_allocWithZone(*(v20 + 840));
        if (v35 == 1.0)
        {
          v36 = [v39 initWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
        }

        else
        {
          v40 = [v39 initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
          v41 = [objc_allocWithZone(*(v20 + 840)) initWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
          v42 = CLKUIInterpolateBetweenColors();
          if (!v42)
          {
            __break(1u);
            return;
          }

          v36 = v42;

          v5 = v65;
        }

        v21 = v38;
        v22 = v37;
        v23 = 0x278B9A000uLL;
      }

      v43 = [v36 *(v21 + 3008)];

      [v30 *(v22 + 3016)];
      *&v44 = v69;
      if (!v68)
      {
        CLKCompressFraction();
        sub_23BE32778();
        *&v44 = v44;
      }

      [v30 *(v23 + 3088)];
      v45 = v10;
      v46 = v9;
      v47 = v9;
      v48 = v10;
      v20 = 0x277D75000uLL;
      if (!*(v72 + 16))
      {
        goto LABEL_56;
      }

      v49 = sub_23BE2C8A8(v5);
      v46 = v9;
      v45 = v10;
      if (v50)
      {
        v51 = *(*(v72 + 56) + 8 * v49);
        v46 = v9;
        v45 = v10;
        if (*(v51 + 16))
        {
          v52 = sub_23BE28F2C(v12);
          v46 = v9;
          v45 = v10;
          if (v53)
          {
            v54 = (*(v51 + 56) + 16 * v52);
            v46 = *v54;
            v45 = v54[1];
          }
        }
      }

      if (*(v72 + 16))
      {
        v55 = sub_23BE2C8A8(a2);
        if (v56)
        {
          v57 = *(*(v72 + 56) + 8 * v55);
          if (*(v57 + 16))
          {
            v58 = sub_23BE28F2C(v12);
            if (v59)
            {
              break;
            }
          }
        }
      }

      v47 = v9;
      v48 = v10;
      if (v5 != 2)
      {
LABEL_61:
        v24 = 1.0;
        if (a2 == 2)
        {
          if (v5 != 1)
          {
            goto LABEL_23;
          }

          if (v63)
          {
            CLKMapFractionIntoRange();
            v48 = v45;
            v47 = v46;
            goto LABEL_23;
          }
        }

        else if (a2 != 1)
        {
          goto LABEL_23;
        }

LABEL_22:
        sub_23BE32778();
        goto LABEL_23;
      }

LABEL_57:
      if (a2 == 1)
      {
        goto LABEL_22;
      }

      v24 = 1.0;
      if (a2 == 3)
      {
        sub_23BE32A78();
        v25 = v61;
        goto LABEL_24;
      }

LABEL_23:
      v25 = v9 + v24 * (v47 - v9);
      v26 = v10 + (v48 - v10) * v24;
LABEL_24:
      [v30 setPosition_];

LABEL_25:
      if (++v12 == 13)
      {

        [v64 commit];
        return;
      }
    }

    v60 = (*(v57 + 56) + 16 * v58);
    v47 = *v60;
    v48 = v60[1];
LABEL_56:
    if (v5 != 2)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  v6 = *(v3 + OBJC_IVAR___NTKEsterbrookSceneDialView_density);
  *(v3 + OBJC_IVAR___NTKEsterbrookSceneDialView_density) = a1;
  if (v6 != a1)
  {

    sub_23BDE7204(a1);
  }
}

void sub_23BDE7204(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NTKEsterbrookSceneDialView_hourLayers;
  v5 = v1 + OBJC_IVAR___NTKEsterbrookSceneDialView_layout;
  v47 = OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress;
  swift_beginAccess();
  v6 = 1;
  v46 = xmmword_23BE36630;
  v7 = 0x277D75000;
  v8 = 0x278B9A000;
  while (1)
  {
    v10 = *(v2 + v4);
    if (*(v10 + 16))
    {
      v11 = sub_23BE28F2C(v6);
      if (v12)
      {
        break;
      }
    }

LABEL_4:
    if (++v6 == 13)
    {
      return;
    }
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  v14 = *(v5 + 24);
  v15 = 0.0;
  if (*(v14 + 16))
  {
    v16 = sub_23BE2C8A8(a1);
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    if (v20)
    {
      v21 = (*(v14 + 56) + 32 * v16);
      v15 = *v21;
      v17 = v21[1];
      v18 = v21[2];
      v19 = v21[3];
    }
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
  }

  v22 = v13;
  [v22 setFrame_];
  switch(a1)
  {
    case 1:
      v23 = 0xE500000000000000;
      v24 = 0x736B636974;
      break;
    case 3:
      v24 = 0x736C6172656D756ELL;
      v23 = 0xEB0000000069692DLL;
      break;
    case 2:
      v23 = 0xEA0000000000692DLL;
      v24 = 0x736C6172656D756ELL;
      break;
    default:
      goto LABEL_21;
  }

  sub_23BE32B08();

  MEMORY[0x23EEBE160](v24, v23);

  MEMORY[0x23EEBE160](45, 0xE100000000000000);
  sub_23BDE652C(&qword_27E1C8BD0);
  v25 = swift_allocObject();
  *(v25 + 16) = v46;
  *(v25 + 56) = MEMORY[0x277D83B88];
  *(v25 + 64) = MEMORY[0x277D83C10];
  *(v25 + 32) = v6;
  v26 = sub_23BE328D8();
  MEMORY[0x23EEBE160](v26);

  type metadata accessor for SceneLoader();
  v27 = sub_23BDF31AC();
  v28 = sub_23BE32898();

  v29 = [objc_opt_self() imageNamed:v28 inBundle:v27 compatibleWithTraitCollection:0];

  if (!v29)
  {
    v7 = 0x277D75000uLL;
    v8 = 0x278B9A000uLL;
    goto LABEL_23;
  }

  v30 = [v29 imageWithRenderingMode_];

  v7 = 0x277D75000;
  v8 = 0x278B9A000;
  if (!v30)
  {
LABEL_21:
    v29 = 0;
    goto LABEL_23;
  }

  v29 = [v30 CGImage];

  if (v29)
  {
    v49 = v29;
    type metadata accessor for CGImage(0);
    v29 = sub_23BE32D28();
  }

LABEL_23:
  [v22 setContents_];
  swift_unknownObjectRelease();
  v31 = *(v2 + v47);
  if (v31 == 0.0)
  {
    v32 = [objc_allocWithZone(*(v7 + 840)) *(v8 + 3000)];
LABEL_27:
    v35 = v32;
LABEL_28:
    v36 = [v35 CGColor];

    [v22 setContentsMultiplyColor_];
    v37 = *(v5 + 32);
    v9 = *(v5 + 40);
    if (*(v37 + 16))
    {
      v48 = *(v5 + 40);
      v38 = sub_23BE2C8A8(a1);
      if ((v39 & 1) != 0 && (v40 = *(*(v37 + 56) + 8 * v38), *(v40 + 16)))
      {
        v41 = sub_23BE28F2C(v6);
        v9 = v48;
        if (v42)
        {
          v9 = *(*(v40 + 56) + 16 * v41);
        }
      }

      else
      {
        v9 = v48;
      }
    }

    [v22 setPosition_];

    goto LABEL_4;
  }

  v33 = objc_allocWithZone(*(v7 + 840));
  v34 = *(v8 + 3000);
  if (v31 == 1.0)
  {
    v32 = [v33 v34];
    goto LABEL_27;
  }

  v43 = [v33 v34];
  v44 = [objc_allocWithZone(*(v7 + 840)) *(v8 + 3000)];
  v45 = CLKUIInterpolateBetweenColors();
  if (v45)
  {
    v35 = v45;

    v8 = 0x278B9A000;
    goto LABEL_28;
  }

  __break(1u);
}

void sub_23BDE7788()
{
  v1 = sub_23BDE78B8();
  v2 = [v1 CGColor];

  v3 = OBJC_IVAR___NTKEsterbrookSceneDialView_hourLayers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    [*(*(v4 + 56) + ((v10 << 9) | (8 * v11))) setContentsMultiplyColor_];
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_23BDE78B8()
{
  v1 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress);
  if (v1 == 0.0)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D75348]);
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 1.0;
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277D75348]);
    if (v1 != 1.0)
    {
      v8 = [v2 initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
      v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
      result = CLKUIInterpolateBetweenColors();
      if (result)
      {
        v10 = result;

        return v10;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v3 = 0.8;
    v6 = 1.0;
    v4 = 0.8;
    v5 = 0.8;
  }

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:v6];
}

id sub_23BDE7A28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDialView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BDE7B08(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = 0xE500000000000000;
    v4 = 0x736B636974;
  }

  else
  {
    if (a2 == 3)
    {
      v3 = 0xEB0000000069692DLL;
    }

    else
    {
      if (a2 != 2)
      {
        return 0;
      }

      v3 = 0xEA0000000000692DLL;
    }

    v4 = 0x736C6172656D756ELL;
  }

  sub_23BE32B08();

  MEMORY[0x23EEBE160](v4, v3);

  MEMORY[0x23EEBE160](45, 0xE100000000000000);
  sub_23BDE652C(&qword_27E1C8BD0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D83B88];
  *(v5 + 16) = xmmword_23BE36630;
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  v8 = sub_23BE328D8();
  MEMORY[0x23EEBE160](v8);

  type metadata accessor for SceneLoader();
  v9 = sub_23BDF31AC();
  v10 = sub_23BE32898();

  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

  if (v11)
  {
    v12 = [v11 imageWithRenderingMode_];

    return v12;
  }

  return 0;
}

id sub_23BDE7D3C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Scene()
{
  result = qword_27E1C7CB0;
  if (!qword_27E1C7CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BDE7E0C()
{
  sub_23BE326D8();
  if (v0 <= 0x3F)
  {
    sub_23BDE7F34(319, &qword_27E1C7CC0, type metadata accessor for Sprite);
    if (v1 <= 0x3F)
    {
      sub_23BDE7F34(319, &qword_27E1C7CC8, type metadata accessor for TimeRule);
      if (v2 <= 0x3F)
      {
        sub_23BDE7F34(319, &qword_27E1C7CD0, type metadata accessor for SceneInfo);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Timeline(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BDE7F34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BE329A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BDE7F88()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656E696C656D6974;
  if (v1 != 5)
  {
    v3 = 0x7470697263736564;
  }

  v4 = 0x656C7552656D6974;
  if (v1 != 3)
  {
    v4 = 1868983913;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x73657469727073;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23BDE8054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDEA570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDE8094(uint64_t a1)
{
  v2 = sub_23BDE9C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDE80D0(uint64_t a1)
{
  v2 = sub_23BDE9C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDE810C(void *a1)
{
  v3 = v1;
  v5 = sub_23BDE652C(&qword_27E1C7D48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v11 - v7;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDE9C34();
  sub_23BE32E28();
  LOBYTE(v12) = 0;
  sub_23BE326D8();
  sub_23BDEA1CC(&qword_27E1C7D50, MEMORY[0x277CC95F0]);
  sub_23BE32D08();
  if (!v2)
  {
    v9 = type metadata accessor for Scene();
    LOBYTE(v12) = 1;
    sub_23BE32CD8();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    sub_23BDE652C(&qword_27E1C7CF8);
    sub_23BDE9FB0();
    sub_23BE32D08();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    sub_23BDE652C(&qword_27E1C7D10);
    sub_23BDEA064();
    sub_23BE32D08();
    v12 = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    sub_23BDE652C(&qword_27E1C7D28);
    sub_23BDEA118();
    sub_23BE32D08();
    LOBYTE(v12) = 5;
    type metadata accessor for Timeline(0);
    sub_23BDEA1CC(&qword_27E1C7D88, type metadata accessor for Timeline);
    sub_23BE32D08();
    LOBYTE(v12) = 6;
    sub_23BE32CD8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BDE8478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for Timeline(0);
  MEMORY[0x28223BE20]();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BE326D8();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BDE652C(&qword_27E1C7CE0);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20]();
  v11 = &v27 - v10;
  v34 = type metadata accessor for Scene();
  MEMORY[0x28223BE20]();
  v32 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE326C8();
  v13 = a1[3];
  v33 = a1;
  sub_23BDE9BF0(a1, v13);
  sub_23BDE9C34();
  v14 = v31;
  sub_23BE32E18();
  if (v14)
  {
    v16 = v32;
    sub_23BDE6478(v33);
    return (*(v35 + 8))(v16, v6);
  }

  else
  {
    v31 = v3;
    v15 = v29;
    LOBYTE(v37) = 0;
    sub_23BDEA1CC(&qword_27E1C7CF0, MEMORY[0x277CC95F0]);
    sub_23BE32C88();
    v18 = v32;
    (*(v35 + 40))(v32, v8, v6);
    LOBYTE(v37) = 1;
    v19 = sub_23BE32C58();
    v20 = v34;
    v21 = (v18 + *(v34 + 20));
    *v21 = v19;
    v21[1] = v22;
    sub_23BDE652C(&qword_27E1C7CF8);
    v36 = 2;
    sub_23BDE9C88();
    sub_23BE32C88();
    *(v18 + v20[6]) = v37;
    sub_23BDE652C(&qword_27E1C7D10);
    v36 = 3;
    sub_23BDE9D84();
    sub_23BE32C88();
    *(v18 + v20[7]) = v37;
    sub_23BDE652C(&qword_27E1C7D28);
    v36 = 4;
    sub_23BDE9E38();
    sub_23BE32C88();
    *(v18 + v20[8]) = v37;
    LOBYTE(v37) = 5;
    sub_23BDEA1CC(&qword_27E1C7D40, type metadata accessor for Timeline);
    sub_23BE32C88();
    sub_23BDE9EEC(v5, v18 + v20[9]);
    LOBYTE(v37) = 6;
    v23 = sub_23BE32C58();
    v25 = v24;
    (*(v15 + 8))(v11, v30);
    v26 = (v18 + v20[10]);
    *v26 = v23;
    v26[1] = v25;
    sub_23BDEA2B0(v18, v28, type metadata accessor for Scene);
    sub_23BDE6478(v33);
    return sub_23BDE9F50(v18, type metadata accessor for Scene);
  }
}

uint64_t sub_23BDE8BA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BE326D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23BDE8C80()
{
  v0 = sub_23BE326D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Timeline(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Scene();
  sub_23BDEA214(v7, qword_27E1DBE98);
  v8 = sub_23BDEA278(v7, qword_27E1DBE98);
  if (qword_27E1C7A70 != -1)
  {
    swift_once();
  }

  v9 = sub_23BDEA278(v4, qword_27E1DBFB0);
  sub_23BDEA2B0(v9, v6, type metadata accessor for Timeline);
  sub_23BE326C8();
  (*(v1 + 32))(v8, v3, v0);
  v10 = (v8 + v7[5]);
  *v10 = 0x63732D7974706D65;
  v10[1] = 0xEB00000000656E65;
  v11 = MEMORY[0x277D84F90];
  *(v8 + v7[6]) = MEMORY[0x277D84F90];
  *(v8 + v7[7]) = v11;
  *(v8 + v7[8]) = v11;
  result = sub_23BDE9EEC(v6, v8 + v7[9]);
  v13 = (v8 + v7[10]);
  *v13 = 0x7974706D65206E41;
  v13[1] = 0xEF2E656E65637320;
  return result;
}

uint64_t sub_23BDE8EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 4)
      {
        v9 = 0x6E657A6F7266;
        if (v6 == 8)
        {
          v9 = 0x7967676F66;
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xE600000000000000;
        }

        if (v6 == 7)
        {
          v9 = 0x79776F6E73;
          v10 = 0xE500000000000000;
        }

        v11 = 0x796D726F7473;
        if (v6 != 5)
        {
          v11 = 7955305;
        }

        v12 = 0xE300000000000000;
        if (v6 == 5)
        {
          v12 = 0xE600000000000000;
        }

        if (*v3 <= 6u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (*v3 <= 6u)
        {
          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      else if (*v3 <= 1u)
      {
        if (*v3)
        {
          v13 = 0x7261656C63;
        }

        else
        {
          v13 = 1701736302;
        }

        if (*v3)
        {
          v7 = 0xE500000000000000;
        }

        else
        {
          v7 = 0xE400000000000000;
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        if (v6 == 2)
        {
          v8 = 1852732787;
        }

        else if (v6 == 3)
        {
          v8 = 1684957559;
        }

        else
        {
          v8 = 1852399986;
        }

        v13 = v8 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      }

      v14 = *v4;
      if (v14 > 4)
      {
        if (*v4 <= 6u)
        {
          if (v14 == 5)
          {
            v15 = 0xE600000000000000;
            if (v13 != 0x796D726F7473)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v15 = 0xE300000000000000;
            if (v13 != 7955305)
            {
              goto LABEL_5;
            }
          }
        }

        else if (v14 == 7)
        {
          v15 = 0xE500000000000000;
          if (v13 != 0x79776F6E73)
          {
            goto LABEL_5;
          }
        }

        else if (v14 == 8)
        {
          v15 = 0xE500000000000000;
          if (v13 != 0x7967676F66)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0xE600000000000000;
          if (v13 != 0x6E657A6F7266)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 <= 1u)
      {
        if (*v4)
        {
          v15 = 0xE500000000000000;
          if (v13 != 0x7261656C63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0xE400000000000000;
          if (v13 != 1701736302)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        if (v14 == 2)
        {
          v16 = 1852732787;
        }

        else if (v14 == 3)
        {
          v16 = 1684957559;
        }

        else
        {
          v16 = 1852399986;
        }

        if (v13 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x7900000000))
        {
LABEL_5:
          v5 = sub_23BE32D48();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      if (v7 != v15)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_23BDE9188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sprite();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v51 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    v53 = &v51 - v9;
    v54 = v15;
    v52 = v7;
    while (1)
    {
      sub_23BDEA2B0(v13, v10, type metadata accessor for Sprite);
      v55 = v14;
      v56 = v13;
      sub_23BDEA2B0(v14, v7, type metadata accessor for Sprite);
      if ((sub_23BE326B8() & 1) == 0)
      {
        break;
      }

      v16 = v4[5];
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v20 = *&v10[v16 + 16];
      v19 = *&v10[v16 + 24];
      v21 = v10[v16 + 32];
      v22 = v10[v16 + 33];
      v24 = *&v10[v16 + 40];
      v23 = *&v10[v16 + 48];
      v25 = &v7[v16];
      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      v28 = v25[32];
      v29 = v25[33];
      v31 = *(v25 + 5);
      v30 = *(v25 + 6);
      if (v17 != *v25 || v18 != *(v25 + 1))
      {
        v33 = v11;
        v34 = v4;
        v35 = v23;
        v36 = v21;
        v37 = sub_23BE32D48();
        v21 = v36;
        v23 = v35;
        v4 = v34;
        v11 = v33;
        v7 = v52;
        v10 = v53;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      if (v20 != v27 || v19 != v26)
      {
        break;
      }

      if (v21 == 2)
      {
        if (v28 != 2)
        {
          break;
        }
      }

      else if (v28 == 2 || ((v28 ^ v21) & 1) != 0)
      {
        break;
      }

      if (v22 == 2)
      {
        if (v29 != 2)
        {
          break;
        }
      }

      else if (v29 == 2 || ((v29 ^ v22) & 1) != 0)
      {
        break;
      }

      if (v23)
      {
        if (!v30 || (v24 != v31 || v23 != v30) && (sub_23BE32D48() & 1) == 0)
        {
          break;
        }
      }

      else if (v30)
      {
        break;
      }

      if (v10[v4[6]] != v7[v4[6]])
      {
        break;
      }

      v39 = &v10[v4[7]];
      v58 = *(v39 + 4);
      v40 = *(v39 + 1);
      v57[0] = *v39;
      v57[1] = v40;
      v41 = &v7[v4[7]];
      v60 = *(v41 + 4);
      v42 = *(v41 + 1);
      v59[0] = *v41;
      v59[1] = v42;
      if ((sub_23BE1AD28(v57, v59) & 1) == 0)
      {
        break;
      }

      v43 = v4[8];
      v44 = &v10[v43];
      v45 = &v7[v43];
      if ((sub_23BE326B8() & 1) == 0)
      {
        break;
      }

      v46 = type metadata accessor for Timing(0);
      if (*&v44[v46[5]] != *&v45[v46[5]] || *&v44[v46[6]] != *&v45[v46[6]])
      {
        break;
      }

      v47 = v46[7];
      v48 = v44[v47];
      v49 = v45[v47];
      sub_23BDE9F50(v7, type metadata accessor for Sprite);
      sub_23BDE9F50(v10, type metadata accessor for Sprite);
      result = v48 == v49;
      if (v48 == v49)
      {
        v14 = v55 + v54;
        v13 = v56 + v54;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }

    sub_23BDE9F50(v7, type metadata accessor for Sprite);
    sub_23BDE9F50(v10, type metadata accessor for Sprite);
  }

  return 0;
}

uint64_t sub_23BDE9554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeRule();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v49 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23BDEA2B0(v13, v10, type metadata accessor for TimeRule);
      sub_23BDEA2B0(v14, v7, type metadata accessor for TimeRule);
      if ((sub_23BE326B8() & 1) == 0)
      {
LABEL_88:
        sub_23BDE9F50(v7, type metadata accessor for TimeRule);
        sub_23BDE9F50(v10, type metadata accessor for TimeRule);
        return 0;
      }

      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = v10[v16 + 16];
      v20 = &v7[v16];
      v21 = *&v7[v16];
      v22 = *(v20 + 1);
      v23 = v20[16];
      v24 = v19 >> 5;
      if (v19 >> 5 <= 1)
      {
        if (v24)
        {
          if ((v23 & 0xE0) != 0x20 || v17 != v21 || v18 != v22)
          {
            goto LABEL_88;
          }
        }

        else if (v23 > 0x1F || v17 != v21)
        {
          goto LABEL_88;
        }
      }

      else if (v24 == 2)
      {
        v32 = (v23 & 0xE0) == 0x40 && v17 == v21 && v18 == v22;
        if (!v32 || ((v23 ^ v19) & 1) != 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v24 != 3 || (v23 & 0xE0) != 0x60)
        {
          goto LABEL_88;
        }

        v25 = v17 >> 6;
        if (v25)
        {
          if (v25 == 1)
          {
            v26 = (v21 ^ v17) & 0x3F;
            if ((v21 & 0xC0) != 0x40 || v26 != 0)
            {
              goto LABEL_88;
            }
          }

          else if (v17 == 128)
          {
            if (v21 != 128)
            {
              goto LABEL_88;
            }
          }

          else if (v21 != 129)
          {
            goto LABEL_88;
          }
        }

        else if (v21 >= 0x40u || (v21 & 0x3F) != v17)
        {
          goto LABEL_88;
        }
      }

      v33 = *(v4 + 24);
      v34 = *&v10[v33];
      v35 = *&v10[v33 + 8];
      v36 = v10[v33 + 16];
      v37 = &v7[v33];
      v38 = *&v7[v33];
      v39 = *(v37 + 1);
      v40 = v37[16];
      v41 = v36 >> 5;
      if (v36 >> 5 <= 1)
      {
        if (v41)
        {
          if ((v40 & 0xE0) != 0x20 || v34 != v38)
          {
            goto LABEL_88;
          }

          v43 = v35 == v39;
        }

        else
        {
          if (v40 >= 0x20)
          {
            goto LABEL_88;
          }

          v43 = v34 == v38;
        }

        goto LABEL_76;
      }

      if (v41 == 2)
      {
        if ((v40 & 0xE0) != 0x40 || v34 != v38 || v35 != v39)
        {
          goto LABEL_88;
        }

        v43 = ((v40 ^ v36) & 1) == 0;
        goto LABEL_76;
      }

      if (v41 != 3 || (v40 & 0xE0) != 0x60)
      {
        goto LABEL_88;
      }

      v42 = v34 >> 6;
      if (!v42)
      {
        break;
      }

      if (v42 == 1)
      {
        if ((v38 & 0xC0) != 0x40)
        {
          goto LABEL_88;
        }

        v43 = ((v38 ^ v34) & 0x3FLL) == 0;
LABEL_76:
        v47 = v43;
        sub_23BDE9F50(v7, type metadata accessor for TimeRule);
        sub_23BDE9F50(v10, type metadata accessor for TimeRule);
        if ((v47 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      }

      if (v34 == 128)
      {
        if (v38 != 128)
        {
          goto LABEL_88;
        }
      }

      else if (v38 != 129)
      {
        goto LABEL_88;
      }

      sub_23BDE9F50(v7, type metadata accessor for TimeRule);
      sub_23BDE9F50(v10, type metadata accessor for TimeRule);
LABEL_80:
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    if (v38 >= 0x40u)
    {
      goto LABEL_88;
    }

    v43 = (v38 & 0x3F) == v34;
    goto LABEL_76;
  }

  return 1;
}

uint64_t sub_23BDE9954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneInfo() - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23BDEA2B0(v13, v10, type metadata accessor for SceneInfo);
        sub_23BDEA2B0(v14, v7, type metadata accessor for SceneInfo);
        v16 = _s32NTKEsterbrookFaceBundleCompanion9SceneInfoO21__derived_enum_equalsySbAC_ACtFZ_0(v10, v7);
        sub_23BDE9F50(v7, type metadata accessor for SceneInfo);
        sub_23BDE9F50(v10, type metadata accessor for SceneInfo);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_23BDE9B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Scene();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23BE32D48() & 1) == 0)
  {
    return 0;
  }

  if (!sub_23BDE9188(*(a1 + v4[6]), *(a2 + v4[6])))
  {
    return 0;
  }

  if ((sub_23BDE9554(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_23BDE9954(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = a1 + v10;
  v12 = a2 + v10;
  if ((sub_23BE326B8() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for Timeline(0);
  return *(v11 + *(v13 + 20)) == *(v12 + *(v13 + 20));
}

void *sub_23BDE9BF0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23BDE9C34()
{
  result = qword_27E1C7CE8;
  if (!qword_27E1C7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7CE8);
  }

  return result;
}

unint64_t sub_23BDE9C88()
{
  result = qword_27E1C7D00;
  if (!qword_27E1C7D00)
  {
    sub_23BDE9D3C(&qword_27E1C7CF8);
    sub_23BDEA1CC(&qword_27E1C7D08, type metadata accessor for Sprite);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D00);
  }

  return result;
}

uint64_t sub_23BDE9D3C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23BDE9D84()
{
  result = qword_27E1C7D18;
  if (!qword_27E1C7D18)
  {
    sub_23BDE9D3C(&qword_27E1C7D10);
    sub_23BDEA1CC(&qword_27E1C7D20, type metadata accessor for TimeRule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D18);
  }

  return result;
}

unint64_t sub_23BDE9E38()
{
  result = qword_27E1C7D30;
  if (!qword_27E1C7D30)
  {
    sub_23BDE9D3C(&qword_27E1C7D28);
    sub_23BDEA1CC(&qword_27E1C7D38, type metadata accessor for SceneInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D30);
  }

  return result;
}

uint64_t sub_23BDE9EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timeline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDE9F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23BDE9FB0()
{
  result = qword_27E1C7D58;
  if (!qword_27E1C7D58)
  {
    sub_23BDE9D3C(&qword_27E1C7CF8);
    sub_23BDEA1CC(&qword_27E1C7D60, type metadata accessor for Sprite);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D58);
  }

  return result;
}

unint64_t sub_23BDEA064()
{
  result = qword_27E1C7D68;
  if (!qword_27E1C7D68)
  {
    sub_23BDE9D3C(&qword_27E1C7D10);
    sub_23BDEA1CC(&qword_27E1C7D70, type metadata accessor for TimeRule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D68);
  }

  return result;
}

unint64_t sub_23BDEA118()
{
  result = qword_27E1C7D78;
  if (!qword_27E1C7D78)
  {
    sub_23BDE9D3C(&qword_27E1C7D28);
    sub_23BDEA1CC(&qword_27E1C7D80, type metadata accessor for SceneInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D78);
  }

  return result;
}

uint64_t sub_23BDEA1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_23BDEA214(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23BDEA278(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23BDEA2B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for CalendarEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalendarEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23BDEA46C()
{
  result = qword_27E1C7D90;
  if (!qword_27E1C7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D90);
  }

  return result;
}

unint64_t sub_23BDEA4C4()
{
  result = qword_27E1C7D98;
  if (!qword_27E1C7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7D98);
  }

  return result;
}

unint64_t sub_23BDEA51C()
{
  result = qword_27E1C7DA0;
  if (!qword_27E1C7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7DA0);
  }

  return result;
}

uint64_t sub_23BDEA570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73657469727073 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C7552656D6974 && a2 == 0xE900000000000073 || (sub_23BE32D48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E696C656D6974 && a2 == 0xE800000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 6;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23BDEA7BC()
{
  v0 = sub_23BE327D8();
  sub_23BDEA214(v0, qword_27E1DBEB0);
  sub_23BDEA278(v0, qword_27E1DBEB0);
  return sub_23BE327C8();
}

uint64_t sub_23BDEA83C()
{
  v0 = sub_23BE327D8();
  sub_23BDEA214(v0, qword_27E1DBEC8);
  sub_23BDEA278(v0, qword_27E1DBEC8);
  return sub_23BE327C8();
}

uint64_t sub_23BDEA8BC()
{
  v0 = sub_23BE327D8();
  sub_23BDEA214(v0, qword_27E1DBEE0);
  sub_23BDEA278(v0, qword_27E1DBEE0);
  return sub_23BE327C8();
}

uint64_t sub_23BDEA93C()
{
  v0 = sub_23BE327D8();
  sub_23BDEA214(v0, qword_27E1DBEF8);
  sub_23BDEA278(v0, qword_27E1DBEF8);
  return sub_23BE327C8();
}

uint64_t sub_23BDEA9C0()
{
  v0 = sub_23BE327D8();
  sub_23BDEA214(v0, qword_27E1DBF10);
  sub_23BDEA278(v0, qword_27E1DBF10);
  return sub_23BE327C8();
}

uint64_t sub_23BDEAA40()
{
  v0 = sub_23BE327D8();
  sub_23BDEA214(v0, qword_27E1DBF28);
  sub_23BDEA278(v0, qword_27E1DBF28);
  return sub_23BE327C8();
}

uint64_t sub_23BDEAAC0()
{
  v0 = sub_23BE327D8();
  sub_23BDEA214(v0, qword_27E1DBF40);
  sub_23BDEA278(v0, qword_27E1DBF40);
  return sub_23BE327C8();
}

uint64_t sub_23BDEAB40()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_23BDEAB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23BE32D48();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23BDEAC20(uint64_t a1)
{
  v2 = sub_23BDEF4D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEAC5C(uint64_t a1)
{
  v2 = sub_23BDEF4D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEAC98()
{
  v1 = 7367028;
  v2 = 7235952;
  if (*v0 != 2)
  {
    v2 = 0x6D6F74737563;
  }

  if (*v0)
  {
    v1 = 0x656C6464696DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23BDEACF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDEDF14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDEAD20(uint64_t a1)
{
  v2 = sub_23BDEF0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEAD5C(uint64_t a1)
{
  v2 = sub_23BDEF0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEADB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDEAE40(uint64_t a1)
{
  v2 = sub_23BDEF130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEAE7C(uint64_t a1)
{
  v2 = sub_23BDEF130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEAEC4(uint64_t a1)
{
  v2 = sub_23BDEF22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEAF00(uint64_t a1)
{
  v2 = sub_23BDEF22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEAF3C(uint64_t a1)
{
  v2 = sub_23BDEF1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEAF78(uint64_t a1)
{
  v2 = sub_23BDEF1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEAFB4(uint64_t a1)
{
  v2 = sub_23BDEF280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEAFF0(uint64_t a1)
{
  v2 = sub_23BDEF280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB02C(uint64_t a1)
{
  v2 = sub_23BDEFA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB068(uint64_t a1)
{
  v2 = sub_23BDEFA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB0A4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7369776B636F6C63;
  }
}

uint64_t sub_23BDEB0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065;
  if (v6 || (sub_23BE32D48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023BE34C60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BE32D48();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BDEB1D4(uint64_t a1)
{
  v2 = sub_23BDEF9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB210(uint64_t a1)
{
  v2 = sub_23BDEF9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB24C(uint64_t a1)
{
  v2 = sub_23BDEFA3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB288(uint64_t a1)
{
  v2 = sub_23BDEFA3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB2C4()
{
  v1 = 1853321060;
  if (*v0 != 1)
  {
    v1 = 0x726568746965;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28789;
  }
}

uint64_t sub_23BDEB308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDEE070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDEB330(uint64_t a1)
{
  v2 = sub_23BDF0AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB36C(uint64_t a1)
{
  v2 = sub_23BDF0AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB3A8(uint64_t a1)
{
  v2 = sub_23BDF0B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB3E4(uint64_t a1)
{
  v2 = sub_23BDF0B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB420(uint64_t a1)
{
  v2 = sub_23BDF0AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB45C(uint64_t a1)
{
  v2 = sub_23BDF0AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB498(uint64_t a1)
{
  v2 = sub_23BDF0BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB4D4(uint64_t a1)
{
  v2 = sub_23BDF0BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB510()
{
  v1 = 0x7468676972;
  if (*v0 != 1)
  {
    v1 = 0x726568746965;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_23BDEB55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDEE17C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDEB584(uint64_t a1)
{
  v2 = sub_23BDF1164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB5C0(uint64_t a1)
{
  v2 = sub_23BDF1164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB5FC(uint64_t a1)
{
  v2 = sub_23BDF11B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB638(uint64_t a1)
{
  v2 = sub_23BDF11B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB674(uint64_t a1)
{
  v2 = sub_23BDF1260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB6B0(uint64_t a1)
{
  v2 = sub_23BDF1260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB6EC(uint64_t a1)
{
  v2 = sub_23BDF120C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEB728(uint64_t a1)
{
  v2 = sub_23BDF120C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEB764(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_23BDE652C(&qword_27E1C7E38);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20]();
  v5 = &v15 - v4;
  v15 = sub_23BDE652C(&qword_27E1C7E40);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = sub_23BDE652C(&qword_27E1C7E48);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDEE8C4();
  sub_23BE32E28();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_23BDEE918();
    sub_23BE32CA8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_23BDEE96C();
    sub_23BE32CA8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_23BDEBA20(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = a4;
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v5 = sub_23BDE652C(&qword_27E1C7EA8);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v25 - v6;
  v8 = sub_23BDE652C(&qword_27E1C7EB0);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20]();
  v29 = &v25 - v9;
  v10 = sub_23BDE652C(&qword_27E1C7EB8);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20]();
  v26 = &v25 - v11;
  v12 = sub_23BDE652C(&qword_27E1C7EC0);
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v25 - v13;
  v15 = sub_23BDE652C(&qword_27E1C7EC8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v18 = &v25 - v17;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDEF0DC();
  sub_23BE32E28();
  if (v34)
  {
    v19 = (v16 + 8);
    if (v35 == 0)
    {
      LOBYTE(v36) = 0;
      sub_23BDEF280();
      sub_23BE32CA8();
      (*(v25 + 8))(v14, v12);
    }

    else
    {
      if (v35 ^ 1 | *(&v35 + 1))
      {
        LOBYTE(v36) = 2;
        sub_23BDEF1D8();
        v20 = v29;
        sub_23BE32CA8();
        v22 = v30;
        v21 = v31;
      }

      else
      {
        LOBYTE(v36) = 1;
        sub_23BDEF22C();
        v20 = v26;
        sub_23BE32CA8();
        v22 = v27;
        v21 = v28;
      }

      (*(v22 + 8))(v20, v21);
    }

    return (*v19)(v18, v15);
  }

  else
  {
    LOBYTE(v36) = 3;
    sub_23BDEF130();
    sub_23BE32CA8();
    v36 = v35;
    sub_23BDEF2D4();
    v23 = v33;
    sub_23BE32D08();
    (*(v32 + 8))(v7, v23);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_23BDEBED4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a2 | a3)
    {
      if (a2 ^ 1 | a3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x23EEBE630](v6);
  }

  else
  {
    MEMORY[0x23EEBE630](3);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x23EEBE650](v7);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }

    return MEMORY[0x23EEBE650](v8);
  }
}

uint64_t sub_23BDEBF58(void *a1)
{
  v3 = sub_23BDE652C(&qword_27E1C7EE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - v5;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDEF4D8();
  sub_23BE32E28();
  v10 = 0;
  sub_23BE32CE8();
  if (!v1)
  {
    v9 = 1;
    sub_23BE32CE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23BDEC0E0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x23EEBE650](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x23EEBE650](*&v3);
}

uint64_t sub_23BDEC130(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_23BDE652C(&qword_27E1C7F20);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20]();
  v5 = &v15 - v4;
  v15 = sub_23BDE652C(&qword_27E1C7F28);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = sub_23BDE652C(&qword_27E1C7F30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDEF9E8();
  sub_23BE32E28();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_23BDEFA3C();
    sub_23BE32CA8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_23BDEFA90();
    sub_23BE32CA8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_23BDEC3EC()
{
  v1 = 0x6C61636974726576;
  v2 = 0x6C61487265707075;
  if (*v0 != 2)
  {
    v2 = 0x6C61487265776F6CLL;
  }

  if (*v0)
  {
    v1 = 0x746E6F7A69726F68;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23BDEC474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDEE28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDEC49C(uint64_t a1)
{
  v2 = sub_23BDF0240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEC4D8(uint64_t a1)
{
  v2 = sub_23BDF0240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEC520(uint64_t a1)
{
  v2 = sub_23BDF033C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEC55C(uint64_t a1)
{
  v2 = sub_23BDF033C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEC598(uint64_t a1)
{
  v2 = sub_23BDF0294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEC5D4(uint64_t a1)
{
  v2 = sub_23BDF0294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEC610(uint64_t a1)
{
  v2 = sub_23BDF02E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEC64C(uint64_t a1)
{
  v2 = sub_23BDF02E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEC688()
{
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](0);
  return sub_23BE32E08();
}

uint64_t sub_23BDEC6CC()
{
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](0);
  return sub_23BE32E08();
}

uint64_t sub_23BDEC70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDEC78C(uint64_t a1)
{
  v2 = sub_23BDF03E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEC7C8(uint64_t a1)
{
  v2 = sub_23BDF03E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEC804()
{
  if (*v0)
  {
    return 0x6574756E696DLL;
  }

  else
  {
    return 1920298856;
  }
}

uint64_t sub_23BDEC834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v5 || (sub_23BE32D48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BE32D48();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BDEC90C(uint64_t a1)
{
  v2 = sub_23BDEE8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEC948(uint64_t a1)
{
  v2 = sub_23BDEE8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEC984(uint64_t a1)
{
  v2 = sub_23BDEE96C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDEC9C0(uint64_t a1)
{
  v2 = sub_23BDEE96C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDEC9FC(uint64_t a1)
{
  v2 = sub_23BDEE918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDECA38(uint64_t a1)
{
  v2 = sub_23BDEE918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDECA74@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BDEE408(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_23BDECAC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BDEE9C0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

BOOL sub_23BDECB14(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 | *&v3)
    {
      if (*&v2 ^ 1 | *&v3)
      {
        if (*(a2 + 16) && __PAIR128__(v4, *&v5) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 1 | v4))
      {
        return 1;
      }
    }

    else
    {
      v7 = *&v5 | v4;
      if (*(a2 + 16))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return v3 == *(a2 + 8) && v2 == v5;
}

uint64_t sub_23BDECBB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23BE32DC8();
  sub_23BDEBED4(v5, v1, v2, v3);
  return sub_23BE32E08();
}

uint64_t sub_23BDECC18()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23BE32DC8();
  sub_23BDEBED4(v5, v1, v2, v3);
  return sub_23BE32E08();
}

void sub_23BDECC70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BDEF328(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_23BDECCE4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23BE32DC8();
  sub_23BDEC0E0(v1, v2);
  return sub_23BE32E08();
}

uint64_t sub_23BDECD40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23BE32DC8();
  sub_23BDEC0E0(v1, v2);
  return sub_23BE32E08();
}

uint64_t sub_23BDECDA0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BDEF52C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void sub_23BDECDF0(unsigned __int8 a1)
{
  if (!(a1 >> 6) || a1 >> 6 == 1)
  {
    JUMPOUT(0x23EEBE630);
  }

    ;
  }
}

uint64_t sub_23BDECE10(void *a1, int a2)
{
  v34 = a2;
  v3 = sub_23BDE652C(&qword_27E1C7F98);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20]();
  v28 = &v24 - v4;
  v5 = sub_23BDE652C(&qword_27E1C7FA0);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20]();
  v25 = &v24 - v6;
  v7 = sub_23BDE652C(&qword_27E1C7FA8);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20]();
  v9 = &v24 - v8;
  v10 = sub_23BDE652C(&qword_27E1C7FB0);
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v24 - v11;
  v13 = sub_23BDE652C(&qword_27E1C7FB8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20]();
  v16 = &v24 - v15;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDF0240();
  v17 = v34;
  sub_23BE32E28();
  if (!(v17 >> 6))
  {
    v36 = 0;
    sub_23BDF03E4();
    sub_23BE32CA8();
    v35 = v17;
    sub_23BDF04E0();
    sub_23BE32D08();
    (*(v31 + 8))(v12, v10);
    return (*(v14 + 8))(v16, v13);
  }

  if (v17 >> 6 == 1)
  {
    v38 = 1;
    sub_23BDF033C();
    sub_23BE32CA8();
    v37 = v17 & 0x3F;
    sub_23BDF048C();
    v18 = v33;
    sub_23BE32D08();
    (*(v32 + 8))(v9, v18);
    return (*(v14 + 8))(v16, v13);
  }

  v20 = (v14 + 8);
  if (v17 == 128)
  {
    v39 = 2;
    sub_23BDF02E8();
    v21 = v25;
    sub_23BE32CA8();
    v23 = v26;
    v22 = v27;
  }

  else
  {
    v40 = 3;
    sub_23BDF0294();
    v21 = v28;
    sub_23BE32CA8();
    v23 = v29;
    v22 = v30;
  }

  (*(v23 + 8))(v21, v22);
  return (*v20)(v16, v13);
}

uint64_t sub_23BDED2E4(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_23BDE652C(&qword_27E1C8010);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20]();
  v22 = &v18 - v4;
  v5 = sub_23BDE652C(&qword_27E1C8018);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v18 - v6;
  v8 = sub_23BDE652C(&qword_27E1C8020);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v18 - v9;
  v11 = sub_23BDE652C(&qword_27E1C8028);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDF0AA4();
  sub_23BE32E28();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_23BDF0B4C();
      sub_23BE32CA8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_23BDF0AF8();
      v16 = v22;
      sub_23BE32CA8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_23BDF0BA0();
    sub_23BE32CA8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_23BDED664(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_23BDE652C(&qword_27E1C8070);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20]();
  v22 = &v18 - v4;
  v5 = sub_23BDE652C(&qword_27E1C8078);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v18 - v6;
  v8 = sub_23BDE652C(&qword_27E1C8080);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v18 - v9;
  v11 = sub_23BDE652C(&qword_27E1C8088);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDF1164();
  sub_23BE32E28();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_23BDF120C();
      sub_23BE32CA8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_23BDF11B8();
      v16 = v22;
      sub_23BE32CA8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_23BDF1260();
    sub_23BE32CA8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_23BDED9E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BDEFAE4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BDEDA2C()
{
  v1 = *v0;
  sub_23BE32DC8();
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      sub_23BDECDF0(v1);
    }

    v2 = v1 & 0x3F;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x23EEBE630](v2);
  return sub_23BE32E08();
}

uint64_t sub_23BDEDAA0()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      sub_23BDECDF0(v1);
    }

    v1 &= 0x3Fu;
  }

  return MEMORY[0x23EEBE630](v1);
}

uint64_t sub_23BDEDAEC()
{
  v1 = *v0;
  sub_23BE32DC8();
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      sub_23BDECDF0(v1);
    }

    v2 = v1 & 0x3F;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x23EEBE630](v2);
  return sub_23BE32E08();
}

uint64_t sub_23BDEDB5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v4 = v3 & 0xC0;
      v5 = ((v3 ^ v2) & 0x3F) == 0;
      return v4 == 64 && v5;
    }

    if (v2 == 128)
    {
      if (v3 != 128)
      {
        return 0;
      }
    }

    else if (v3 != 129)
    {
      return 0;
    }

    return 1;
  }

  return v3 < 0x40 && v2 == v3;
}

uint64_t sub_23BDEDBD8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BDF0534(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BDEDC30@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BDF0BF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23BDEDCDC()
{
  result = qword_27E1C7DC8;
  if (!qword_27E1C7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7DC8);
  }

  return result;
}

unint64_t sub_23BDEDD34()
{
  result = qword_27E1C7DD0;
  if (!qword_27E1C7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7DD0);
  }

  return result;
}

uint64_t sub_23BDEDDB8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_23BDE9D3C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BDEDE10()
{
  result = qword_27E1C7DE8;
  if (!qword_27E1C7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7DE8);
  }

  return result;
}

unint64_t sub_23BDEDE68()
{
  result = qword_27E1C7DF0;
  if (!qword_27E1C7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7DF0);
  }

  return result;
}

unint64_t sub_23BDEDEC0()
{
  result = qword_27E1C7DF8;
  if (!qword_27E1C7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7DF8);
  }

  return result;
}

uint64_t sub_23BDEDF14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7367028 && a2 == 0xE300000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6464696DLL && a2 == 0xE600000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7235952 && a2 == 0xE300000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23BDEE070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28789 && a2 == 0xE200000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1853321060 && a2 == 0xE400000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746965 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23BDEE17C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746965 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23BDEE28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636974726576 && a2 == 0xE800000000000000;
  if (v4 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61487265707075 && a2 == 0xE900000000000066 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61487265776F6CLL && a2 == 0xE900000000000066)
  {

    return 3;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23BDEE408(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C7E00);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20]();
  v4 = &v21 - v3;
  v5 = sub_23BDE652C(&qword_27E1C7E08);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v21 - v6;
  v8 = sub_23BDE652C(&qword_27E1C7E10);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v21 - v9;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDEE8C4();
  v11 = v26;
  sub_23BE32E18();
  if (v11)
  {
    return sub_23BDE6478(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_23BE32C98();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_23BE05590();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_23BE32B78();
    swift_allocError();
    v19 = v18;
    sub_23BDE652C(&qword_27E1C7E20);
    *v19 = &type metadata for Hand;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_23BDE6478(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_23BDEE918();
    sub_23BE32C18();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_23BDEE96C();
    sub_23BE32C18();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_23BDE6478(v26);
  return v31 & 1;
}

unint64_t sub_23BDEE8C4()
{
  result = qword_27E1C7E18;
  if (!qword_27E1C7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E18);
  }

  return result;
}

unint64_t sub_23BDEE918()
{
  result = qword_27E1C7E28;
  if (!qword_27E1C7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E28);
  }

  return result;
}

unint64_t sub_23BDEE96C()
{
  result = qword_27E1C7E30;
  if (!qword_27E1C7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E30);
  }

  return result;
}

uint64_t sub_23BDEE9C0(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C7E50);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20]();
  v41 = &v31 - v4;
  v36 = sub_23BDE652C(&qword_27E1C7E58);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20]();
  v40 = &v31 - v5;
  v37 = sub_23BDE652C(&qword_27E1C7E60);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v31 - v6;
  v8 = sub_23BDE652C(&qword_27E1C7E68);
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v31 - v9;
  v11 = sub_23BDE652C(&qword_27E1C7E70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v31 - v13;
  v15 = a1[3];
  v48 = a1;
  v16 = sub_23BDE9BF0(a1, v15);
  sub_23BDEF0DC();
  v17 = v42;
  sub_23BE32E18();
  if (!v17)
  {
    v18 = v10;
    v32 = v8;
    v19 = v7;
    v20 = v40;
    v21 = v41;
    v42 = v12;
    v22 = sub_23BE32C98();
    v23 = (2 * *(v22 + 16)) | 1;
    v44 = v22;
    v45 = v22 + 32;
    v46 = 0;
    v47 = v23;
    v24 = sub_23BE05594();
    if (v24 == 4 || v46 != v47 >> 1)
    {
      v25 = sub_23BE32B78();
      swift_allocError();
      v27 = v26;
      sub_23BDE652C(&qword_27E1C7E20);
      *v27 = &type metadata for Hand.Anchor;
      v16 = v14;
      sub_23BE32C28();
      sub_23BE32B38();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v42 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else if (v24 > 1u)
    {
      v29 = v42;
      if (v24 == 2)
      {
        LOBYTE(v43) = 2;
        sub_23BDEF1D8();
        sub_23BE32C18();
        (*(v33 + 8))(v20, v36);
        (*(v29 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = 2;
      }

      else
      {
        LOBYTE(v43) = 3;
        sub_23BDEF130();
        sub_23BE32C18();
        sub_23BDEF184();
        v30 = v38;
        sub_23BE32C88();
        (*(v39 + 8))(v21, v30);
        (*(v29 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = v43;
      }
    }

    else if (v24)
    {
      LOBYTE(v43) = 1;
      sub_23BDEF22C();
      sub_23BE32C18();
      (*(v35 + 8))(v19, v37);
      (*(v42 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 1;
    }

    else
    {
      LOBYTE(v43) = 0;
      sub_23BDEF280();
      sub_23BE32C18();
      (*(v34 + 8))(v18, v32);
      (*(v42 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 0;
    }
  }

  sub_23BDE6478(v48);
  return v16;
}

unint64_t sub_23BDEF0DC()
{
  result = qword_27E1C7E78;
  if (!qword_27E1C7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E78);
  }

  return result;
}

unint64_t sub_23BDEF130()
{
  result = qword_27E1C7E80;
  if (!qword_27E1C7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E80);
  }

  return result;
}

unint64_t sub_23BDEF184()
{
  result = qword_27E1C7E88;
  if (!qword_27E1C7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E88);
  }

  return result;
}

unint64_t sub_23BDEF1D8()
{
  result = qword_27E1C7E90;
  if (!qword_27E1C7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E90);
  }

  return result;
}

unint64_t sub_23BDEF22C()
{
  result = qword_27E1C7E98;
  if (!qword_27E1C7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7E98);
  }

  return result;
}

unint64_t sub_23BDEF280()
{
  result = qword_27E1C7EA0;
  if (!qword_27E1C7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7EA0);
  }

  return result;
}

unint64_t sub_23BDEF2D4()
{
  result = qword_27E1C7ED0;
  if (!qword_27E1C7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7ED0);
  }

  return result;
}

double sub_23BDEF328(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C7ED8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v9[-v4];
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDEF4D8();
  sub_23BE32E18();
  v9[15] = 0;
  sub_23BE32C68();
  v7 = v6;
  v9[14] = 1;
  sub_23BE32C68();
  (*(v3 + 8))(v5, v2);
  sub_23BDE6478(a1);
  return v7;
}

unint64_t sub_23BDEF4D8()
{
  result = qword_27E1C7EE0;
  if (!qword_27E1C7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7EE0);
  }

  return result;
}

uint64_t sub_23BDEF52C(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C7EF0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20]();
  v4 = &v21 - v3;
  v5 = sub_23BDE652C(&qword_27E1C7EF8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v21 - v6;
  v8 = sub_23BDE652C(&qword_27E1C7F00);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v21 - v9;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDEF9E8();
  v11 = v26;
  sub_23BE32E18();
  if (v11)
  {
    return sub_23BDE6478(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_23BE32C98();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_23BE05590();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_23BE32B78();
    swift_allocError();
    v19 = v18;
    sub_23BDE652C(&qword_27E1C7E20);
    *v19 = &type metadata for Hand.Side;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_23BDE6478(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_23BDEFA3C();
    sub_23BE32C18();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_23BDEFA90();
    sub_23BE32C18();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_23BDE6478(v26);
  return v31 & 1;
}

unint64_t sub_23BDEF9E8()
{
  result = qword_27E1C7F08;
  if (!qword_27E1C7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F08);
  }

  return result;
}

unint64_t sub_23BDEFA3C()
{
  result = qword_27E1C7F10;
  if (!qword_27E1C7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F10);
  }

  return result;
}

unint64_t sub_23BDEFA90()
{
  result = qword_27E1C7F18;
  if (!qword_27E1C7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F18);
  }

  return result;
}

uint64_t sub_23BDEFAE4(void *a1)
{
  v40 = sub_23BDE652C(&qword_27E1C7F38);
  v46 = *(v40 - 8);
  MEMORY[0x28223BE20]();
  v45 = &v35 - v2;
  v41 = sub_23BDE652C(&qword_27E1C7F40);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20]();
  v44 = &v35 - v3;
  v4 = sub_23BDE652C(&qword_27E1C7F48);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v35 - v6;
  v8 = sub_23BDE652C(&qword_27E1C7F50);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v35 - v9;
  v11 = sub_23BDE652C(&qword_27E1C7F58);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v35 - v13;
  v15 = a1[3];
  v48 = a1;
  sub_23BDE9BF0(a1, v15);
  sub_23BDF0240();
  v16 = v47;
  sub_23BE32E18();
  if (!v16)
  {
    v35 = v8;
    v36 = v10;
    v18 = v44;
    v17 = v45;
    v37 = 0;
    v19 = v46;
    v47 = v12;
    v20 = sub_23BE32C98();
    v21 = (2 * *(v20 + 16)) | 1;
    v49 = v20;
    v50 = v20 + 32;
    v51 = 0;
    v52 = v21;
    v22 = sub_23BE05594();
    if (v22 == 4 || v51 != v52 >> 1)
    {
      v27 = v11;
      v11 = sub_23BE32B78();
      swift_allocError();
      v29 = v28;
      sub_23BDE652C(&qword_27E1C7E20);
      *v29 = &type metadata for Hand.Orientation;
      sub_23BE32C28();
      sub_23BE32B38();
      (*(*(v11 - 8) + 104))(v29, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      (*(v47 + 8))(v14, v27);
LABEL_9:
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if (v22 <= 1u)
    {
      v23 = v47;
      if (v22)
      {
        v53 = 1;
        sub_23BDF033C();
        v32 = v37;
        sub_23BE32C18();
        if (!v32)
        {
          sub_23BDF0390();
          v33 = v42;
          sub_23BE32C88();
          (*(v43 + 8))(v7, v33);
          (*(v23 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v11 = v53 | 0x40u;
          goto LABEL_10;
        }
      }

      else
      {
        v53 = 0;
        sub_23BDF03E4();
        v25 = v36;
        v24 = v37;
        sub_23BE32C18();
        if (!v24)
        {
          sub_23BDF0438();
          v26 = v35;
          sub_23BE32C88();
          (*(v38 + 8))(v25, v26);
          (*(v23 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v11 = v53;
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

    if (v22 == 2)
    {
      v53 = 2;
      sub_23BDF02E8();
      v31 = v37;
      sub_23BE32C18();
      if (!v31)
      {
        (*(v39 + 8))(v18, v41);
        (*(v47 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v11 = 128;
        goto LABEL_10;
      }

      v23 = v47;
LABEL_16:
      (*(v23 + 8))(v14, v11);
      goto LABEL_9;
    }

    v53 = 3;
    sub_23BDF0294();
    v34 = v37;
    sub_23BE32C18();
    if (v34)
    {
      (*(v47 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v19 + 8))(v17, v40);
      (*(v47 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v11 = 129;
    }
  }

LABEL_10:
  sub_23BDE6478(v48);
  return v11;
}

unint64_t sub_23BDF0240()
{
  result = qword_27E1C7F60;
  if (!qword_27E1C7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F60);
  }

  return result;
}

unint64_t sub_23BDF0294()
{
  result = qword_27E1C7F68;
  if (!qword_27E1C7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F68);
  }

  return result;
}

unint64_t sub_23BDF02E8()
{
  result = qword_27E1C7F70;
  if (!qword_27E1C7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F70);
  }

  return result;
}

unint64_t sub_23BDF033C()
{
  result = qword_27E1C7F78;
  if (!qword_27E1C7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F78);
  }

  return result;
}

unint64_t sub_23BDF0390()
{
  result = qword_27E1C7F80;
  if (!qword_27E1C7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F80);
  }

  return result;
}

unint64_t sub_23BDF03E4()
{
  result = qword_27E1C7F88;
  if (!qword_27E1C7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F88);
  }

  return result;
}

unint64_t sub_23BDF0438()
{
  result = qword_27E1C7F90;
  if (!qword_27E1C7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7F90);
  }

  return result;
}

unint64_t sub_23BDF048C()
{
  result = qword_27E1C7FC0;
  if (!qword_27E1C7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7FC0);
  }

  return result;
}

unint64_t sub_23BDF04E0()
{
  result = qword_27E1C7FC8;
  if (!qword_27E1C7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7FC8);
  }

  return result;
}

uint64_t sub_23BDF0534(void *a1)
{
  v31 = sub_23BDE652C(&qword_27E1C7FD0);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20]();
  v33 = &v26 - v2;
  v32 = sub_23BDE652C(&qword_27E1C7FD8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v26 - v3;
  v5 = sub_23BDE652C(&qword_27E1C7FE0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v26 - v6;
  v8 = sub_23BDE652C(&qword_27E1C7FE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_23BDE9BF0(a1, v12);
  sub_23BDF0AA4();
  v13 = v34;
  sub_23BE32E18();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_23BE32C98();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_23BE05598();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_23BDF0B4C();
          sub_23BE32C18();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_23BDE6478(v35);
          return v9;
        }

        v40 = 2;
        sub_23BDF0AF8();
        v24 = v11;
        sub_23BE32C18();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_23BDF0BA0();
        v24 = v11;
        sub_23BE32C18();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_23BE32B78();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_23BDE652C(&qword_27E1C7E20) + 48);
    *v22 = &type metadata for Hand.Orientation.Direction.Vertical;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_23BDE6478(v35);
  return v9;
}

unint64_t sub_23BDF0AA4()
{
  result = qword_27E1C7FF0;
  if (!qword_27E1C7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7FF0);
  }

  return result;
}

unint64_t sub_23BDF0AF8()
{
  result = qword_27E1C7FF8;
  if (!qword_27E1C7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C7FF8);
  }

  return result;
}

unint64_t sub_23BDF0B4C()
{
  result = qword_27E1C8000;
  if (!qword_27E1C8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8000);
  }

  return result;
}

unint64_t sub_23BDF0BA0()
{
  result = qword_27E1C8008;
  if (!qword_27E1C8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8008);
  }

  return result;
}

uint64_t sub_23BDF0BF4(void *a1)
{
  v31 = sub_23BDE652C(&qword_27E1C8030);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20]();
  v33 = &v26 - v2;
  v32 = sub_23BDE652C(&qword_27E1C8038);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v26 - v3;
  v5 = sub_23BDE652C(&qword_27E1C8040);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v26 - v6;
  v8 = sub_23BDE652C(&qword_27E1C8048);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_23BDE9BF0(a1, v12);
  sub_23BDF1164();
  v13 = v34;
  sub_23BE32E18();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_23BE32C98();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_23BE05598();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_23BDF120C();
          sub_23BE32C18();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_23BDE6478(v35);
          return v9;
        }

        v40 = 2;
        sub_23BDF11B8();
        v24 = v11;
        sub_23BE32C18();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_23BDF1260();
        v24 = v11;
        sub_23BE32C18();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_23BE32B78();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_23BDE652C(&qword_27E1C7E20) + 48);
    *v22 = &type metadata for Hand.Orientation.Direction.Horizontal;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_23BDE6478(v35);
  return v9;
}

unint64_t sub_23BDF1164()
{
  result = qword_27E1C8050;
  if (!qword_27E1C8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8050);
  }

  return result;
}

unint64_t sub_23BDF11B8()
{
  result = qword_27E1C8058;
  if (!qword_27E1C8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8058);
  }

  return result;
}

unint64_t sub_23BDF120C()
{
  result = qword_27E1C8060;
  if (!qword_27E1C8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8060);
  }

  return result;
}

unint64_t sub_23BDF1260()
{
  result = qword_27E1C8068;
  if (!qword_27E1C8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8068);
  }

  return result;
}

uint64_t sub_23BDF13D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23BDF1460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Atlas.IndexMappingBehavior(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Atlas.IndexMappingBehavior(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Hand.Anchor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Hand.Anchor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Hand.Anchor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23BDF1850(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BDF186C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimatingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimatingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Hand.Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Hand.Orientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23BDF1B44(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_23BDF1B70(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

unint64_t sub_23BDF1BB4()
{
  result = qword_27E1C8090;
  if (!qword_27E1C8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8090);
  }

  return result;
}

unint64_t sub_23BDF1C0C()
{
  result = qword_27E1C8098;
  if (!qword_27E1C8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8098);
  }

  return result;
}

unint64_t sub_23BDF1C64()
{
  result = qword_27E1C80A0;
  if (!qword_27E1C80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80A0);
  }

  return result;
}

unint64_t sub_23BDF1CBC()
{
  result = qword_27E1C80A8;
  if (!qword_27E1C80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80A8);
  }

  return result;
}

unint64_t sub_23BDF1D14()
{
  result = qword_27E1C80B0;
  if (!qword_27E1C80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80B0);
  }

  return result;
}

unint64_t sub_23BDF1D6C()
{
  result = qword_27E1C80B8;
  if (!qword_27E1C80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80B8);
  }

  return result;
}

unint64_t sub_23BDF1DC4()
{
  result = qword_27E1C80C0;
  if (!qword_27E1C80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80C0);
  }

  return result;
}

unint64_t sub_23BDF1E1C()
{
  result = qword_27E1C80C8;
  if (!qword_27E1C80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80C8);
  }

  return result;
}

unint64_t sub_23BDF1E74()
{
  result = qword_27E1C80D0;
  if (!qword_27E1C80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80D0);
  }

  return result;
}

unint64_t sub_23BDF1ECC()
{
  result = qword_27E1C80D8;
  if (!qword_27E1C80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80D8);
  }

  return result;
}

unint64_t sub_23BDF1F24()
{
  result = qword_27E1C80E0;
  if (!qword_27E1C80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80E0);
  }

  return result;
}

unint64_t sub_23BDF1F7C()
{
  result = qword_27E1C80E8;
  if (!qword_27E1C80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80E8);
  }

  return result;
}

unint64_t sub_23BDF1FD4()
{
  result = qword_27E1C80F0;
  if (!qword_27E1C80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80F0);
  }

  return result;
}

unint64_t sub_23BDF202C()
{
  result = qword_27E1C80F8;
  if (!qword_27E1C80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C80F8);
  }

  return result;
}

unint64_t sub_23BDF2084()
{
  result = qword_27E1C8100;
  if (!qword_27E1C8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8100);
  }

  return result;
}

unint64_t sub_23BDF20DC()
{
  result = qword_27E1C8108;
  if (!qword_27E1C8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8108);
  }

  return result;
}

unint64_t sub_23BDF2134()
{
  result = qword_27E1C8110;
  if (!qword_27E1C8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8110);
  }

  return result;
}

unint64_t sub_23BDF218C()
{
  result = qword_27E1C8118;
  if (!qword_27E1C8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8118);
  }

  return result;
}

unint64_t sub_23BDF21E4()
{
  result = qword_27E1C8120;
  if (!qword_27E1C8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8120);
  }

  return result;
}

unint64_t sub_23BDF223C()
{
  result = qword_27E1C8128;
  if (!qword_27E1C8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8128);
  }

  return result;
}

unint64_t sub_23BDF2294()
{
  result = qword_27E1C8130;
  if (!qword_27E1C8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8130);
  }

  return result;
}

unint64_t sub_23BDF22EC()
{
  result = qword_27E1C8138;
  if (!qword_27E1C8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8138);
  }

  return result;
}

unint64_t sub_23BDF2344()
{
  result = qword_27E1C8140;
  if (!qword_27E1C8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8140);
  }

  return result;
}

unint64_t sub_23BDF239C()
{
  result = qword_27E1C8148;
  if (!qword_27E1C8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8148);
  }

  return result;
}

unint64_t sub_23BDF23F4()
{
  result = qword_27E1C8150;
  if (!qword_27E1C8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8150);
  }

  return result;
}

unint64_t sub_23BDF244C()
{
  result = qword_27E1C8158;
  if (!qword_27E1C8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8158);
  }

  return result;
}

unint64_t sub_23BDF24A4()
{
  result = qword_27E1C8160;
  if (!qword_27E1C8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8160);
  }

  return result;
}

unint64_t sub_23BDF24FC()
{
  result = qword_27E1C8168;
  if (!qword_27E1C8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8168);
  }

  return result;
}

unint64_t sub_23BDF2554()
{
  result = qword_27E1C8170;
  if (!qword_27E1C8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8170);
  }

  return result;
}

unint64_t sub_23BDF25AC()
{
  result = qword_27E1C8178;
  if (!qword_27E1C8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8178);
  }

  return result;
}

unint64_t sub_23BDF2604()
{
  result = qword_27E1C8180;
  if (!qword_27E1C8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8180);
  }

  return result;
}

unint64_t sub_23BDF265C()
{
  result = qword_27E1C8188;
  if (!qword_27E1C8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8188);
  }

  return result;
}

unint64_t sub_23BDF26B4()
{
  result = qword_27E1C8190;
  if (!qword_27E1C8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8190);
  }

  return result;
}

unint64_t sub_23BDF270C()
{
  result = qword_27E1C8198;
  if (!qword_27E1C8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8198);
  }

  return result;
}

unint64_t sub_23BDF2764()
{
  result = qword_27E1C81A0;
  if (!qword_27E1C81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81A0);
  }

  return result;
}

unint64_t sub_23BDF27BC()
{
  result = qword_27E1C81A8;
  if (!qword_27E1C81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81A8);
  }

  return result;
}

unint64_t sub_23BDF2814()
{
  result = qword_27E1C81B0;
  if (!qword_27E1C81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81B0);
  }

  return result;
}

unint64_t sub_23BDF286C()
{
  result = qword_27E1C81B8;
  if (!qword_27E1C81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81B8);
  }

  return result;
}

unint64_t sub_23BDF28C4()
{
  result = qword_27E1C81C0;
  if (!qword_27E1C81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81C0);
  }

  return result;
}

unint64_t sub_23BDF291C()
{
  result = qword_27E1C81C8;
  if (!qword_27E1C81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81C8);
  }

  return result;
}

unint64_t sub_23BDF2974()
{
  result = qword_27E1C81D0;
  if (!qword_27E1C81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81D0);
  }

  return result;
}

unint64_t sub_23BDF29CC()
{
  result = qword_27E1C81D8;
  if (!qword_27E1C81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81D8);
  }

  return result;
}

unint64_t sub_23BDF2A24()
{
  result = qword_27E1C81E0;
  if (!qword_27E1C81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81E0);
  }

  return result;
}

unint64_t sub_23BDF2A7C()
{
  result = qword_27E1C81E8;
  if (!qword_27E1C81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81E8);
  }

  return result;
}

unint64_t sub_23BDF2AD4()
{
  result = qword_27E1C81F0;
  if (!qword_27E1C81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81F0);
  }

  return result;
}

unint64_t sub_23BDF2B2C()
{
  result = qword_27E1C81F8;
  if (!qword_27E1C81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C81F8);
  }

  return result;
}

unint64_t sub_23BDF2B84()
{
  result = qword_27E1C8200;
  if (!qword_27E1C8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8200);
  }

  return result;
}

unint64_t sub_23BDF2BDC()
{
  result = qword_27E1C8208;
  if (!qword_27E1C8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8208);
  }

  return result;
}

unint64_t sub_23BDF2C34()
{
  result = qword_27E1C8210;
  if (!qword_27E1C8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8210);
  }

  return result;
}

unint64_t sub_23BDF2C8C()
{
  result = qword_27E1C8218;
  if (!qword_27E1C8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8218);
  }

  return result;
}

unint64_t sub_23BDF2CE4()
{
  result = qword_27E1C8220;
  if (!qword_27E1C8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8220);
  }

  return result;
}

unint64_t sub_23BDF2D3C()
{
  result = qword_27E1C8228;
  if (!qword_27E1C8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8228);
  }

  return result;
}

unint64_t sub_23BDF2D94()
{
  result = qword_27E1C8230;
  if (!qword_27E1C8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8230);
  }

  return result;
}

unint64_t sub_23BDF2DEC()
{
  result = qword_27E1C8238;
  if (!qword_27E1C8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8238);
  }

  return result;
}

unint64_t sub_23BDF2E44()
{
  result = qword_27E1C8240;
  if (!qword_27E1C8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8240);
  }

  return result;
}

unint64_t sub_23BDF2E9C()
{
  result = qword_27E1C8248;
  if (!qword_27E1C8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8248);
  }

  return result;
}

unint64_t sub_23BDF2EF4()
{
  result = qword_27E1C8250;
  if (!qword_27E1C8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8250);
  }

  return result;
}

unint64_t sub_23BDF2F4C()
{
  result = qword_27E1C8258;
  if (!qword_27E1C8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8258);
  }

  return result;
}

unint64_t sub_23BDF2FA4()
{
  result = qword_27E1C8260;
  if (!qword_27E1C8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8260);
  }

  return result;
}

unint64_t sub_23BDF2FFC()
{
  result = qword_27E1C8268;
  if (!qword_27E1C8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8268);
  }

  return result;
}

unint64_t sub_23BDF3054()
{
  result = qword_27E1C8270;
  if (!qword_27E1C8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8270);
  }

  return result;
}

unint64_t sub_23BDF30AC()
{
  result = qword_27E1C8278;
  if (!qword_27E1C8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8278);
  }

  return result;
}

id sub_23BDF31AC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

void sub_23BDF3204(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66[21] = a2;
  v3 = sub_23BE32B68();
  v66[19] = *(v3 - 8);
  v66[20] = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v66[17] = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v66[16] = v66 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v66[18] = v66 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v66[13] = v66 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v66[12] = v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v66[14] = v66 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v66[11] = v66 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v66[10] = v66 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v66[9] = v66 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v66[6] = v66 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v66[7] = v66 - v25;
  MEMORY[0x28223BE20](v24);
  v66[8] = v66 - v26;
  v27 = sub_23BE32B78();
  v66[15] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23BE32658();
  v31 = *(v30 - 8);
  v68 = v30;
  v69 = v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v66 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = v66 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = v66 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = v66 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = v66 - v47;
  v67 = a1;
  v49 = v70;
  v50 = sub_23BE32668();
  if (v49)
  {

    if (qword_27E1C7A50 != -1)
    {
      swift_once();
    }

    v52 = sub_23BE327D8();
    sub_23BDEA278(v52, qword_27E1DBEF8);
    v54 = v68;
    v53 = v69;
    (*(v69 + 16))(v48, v67, v68);
    v55 = sub_23BE327B8();
    v56 = sub_23BE32A08();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v71 = v58;
      *v57 = 136315138;
      v59 = sub_23BE32628();
      v61 = v60;
      (*(v53 + 8))(v48, v54);
      v62 = sub_23BE288C4(v59, v61, &v71);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_23BDE0000, v55, v56, "Could not load scene data from url: %s", v57, 0xCu);
      sub_23BDE6478(v58);
      MEMORY[0x23EEBF030](v58, -1, -1);
      MEMORY[0x23EEBF030](v57, -1, -1);
    }

    else
    {

      (*(v53 + 8))(v48, v54);
    }

    sub_23BDF5AF4();
    swift_allocError();
    *v65 = xmmword_23BE38670;
    *(v65 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v66[0] = v46;
    v66[5] = v34;
    v66[2] = v40;
    v66[3] = v37;
    v70 = v29;
    v66[1] = v43;
    v63 = v50;
    v64 = v51;
    sub_23BE325E8();
    swift_allocObject();
    sub_23BE325D8();
    type metadata accessor for Scene();
    sub_23BDF5B48(&qword_27E1C82A0, type metadata accessor for Scene);
    sub_23BE325C8();

    sub_23BDF5B90(v63, v64);
  }
}

void *sub_23BDF4BC8(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v28 - v3;
  v5 = type metadata accessor for Scene();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BE32658();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v15 = [a1 bundleURL];
  sub_23BE32648();

  v16 = sub_23BDF5274(v14);
  v34 = *(v9 + 8);
  v35 = v9 + 8;
  v34(v14, v8);
  v17 = *(v16 + 16);
  if (v17)
  {
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 64);
    v28[0] = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v32 = *(v18 + 56);
    v33 = v19;
    v29 = v6;
    v22 = (v6 + 56);
    v23 = v18;
    v24 = MEMORY[0x277D84F90];
    v30 = v5;
    v28[1] = v23;
    v19(v12, v21, v8);
    while (1)
    {
      sub_23BDF3204(v12, v4);
      v34(v12, v8);
      (*v22)(v4, 0, 1, v5);
      sub_23BDF5A30(v4, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_23BE2CEDC(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = sub_23BE2CEDC(v25 > 1, v26 + 1, 1, v24);
      }

      v24[2] = v26 + 1;
      sub_23BDF5A30(v31, v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26);
      v5 = v30;
      v21 += v32;
      if (!--v17)
      {
        break;
      }

      v33(v12, v21, v8);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v24;
}

id sub_23BDF521C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_23BDF5274(uint64_t a1)
{
  sub_23BDE652C(&qword_27E1C8280);
  (MEMORY[0x28223BE20])();
  v3 = &v53 - v2;
  v4 = sub_23BE32658();
  v60 = *(v4 - 8);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v56 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = sub_23BE32608();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  sub_23BDE652C(&qword_27E1C8288);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23BE38690;
  v17 = *MEMORY[0x277CBE8E8];
  v18 = *MEMORY[0x277CBE868];
  *(v16 + 32) = *MEMORY[0x277CBE8E8];
  *(v16 + 40) = v18;
  v19 = v17;
  v20 = v18;
  v21 = sub_23BE329D8();

  if (!v21)
  {
    if (qword_27E1C7A50 != -1)
    {
      swift_once();
    }

    v41 = sub_23BE327D8();
    sub_23BDEA278(v41, qword_27E1DBEF8);
    v42 = v60;
    (*(v60 + 16))(v7, a1, v4);
    v43 = sub_23BE327B8();
    v44 = sub_23BE32A08();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v42;
      v47 = swift_slowAlloc();
      v63[0] = v47;
      *v45 = 136315138;
      sub_23BDF5B48(&qword_27E1C8290, MEMORY[0x277CC9260]);
      v48 = sub_23BE32D18();
      v50 = v49;
      (*(v46 + 8))(v7, v4);
      v51 = sub_23BE288C4(v48, v50, v63);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_23BDE0000, v43, v44, "FileManager failed to enumerate scenes bundle at url: %s.", v45, 0xCu);
      sub_23BDE6478(v47);
      MEMORY[0x23EEBF030](v47, -1, -1);
      MEMORY[0x23EEBF030](v45, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v7, v4);
    }

    return MEMORY[0x277D84F90];
  }

  v57 = v21;
  sub_23BE329C8();
  sub_23BE325F8();
  if (!v64)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v22 = (v60 + 56);
  v61 = 0x800000023BE34CE0;
  v62 = (v60 + 32);
  v23 = (v60 + 8);
  v54 = (v60 + 16);
  v24 = MEMORY[0x277D84F90];
  while (2)
  {
    v55 = v24;
    while (1)
    {
      v25 = swift_dynamicCast();
      v26 = *v22;
      if (v25)
      {
        break;
      }

      v26(v3, 1, 1, v4);
      sub_23BDF5A94(v3, &qword_27E1C8280);
LABEL_6:
      sub_23BE325F8();
      if (!v64)
      {
        v24 = v55;
        goto LABEL_35;
      }
    }

    v27 = v14;
    v26(v3, 0, 1, v4);
    v28 = *v62;
    (*v62)(v11, v3, v4);
    if (sub_23BE32628() == 0x696C702E6F666E49 && v29 == 0xEA00000000007473)
    {
      goto LABEL_10;
    }

    v30 = sub_23BE32D48();

    if (v30)
    {
      goto LABEL_15;
    }

    if (sub_23BE32628() == 0xD000000000000016 && v61 == v31)
    {
LABEL_10:

LABEL_15:
      (*v23)(v11, v4);
      v14 = v27;
      goto LABEL_6;
    }

    v32 = sub_23BE32D48();

    if (v32)
    {
      goto LABEL_15;
    }

    if (sub_23BE32618() == 0x7473696C70 && v33 == 0xE500000000000000)
    {

      goto LABEL_20;
    }

    v34 = sub_23BE32D48();

    if (v34)
    {
LABEL_20:
      (*v54)(v56, v11, v4);
      v35 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_23BE2CEB4(0, v35[2] + 1, 1, v35);
      }

      v37 = v35[2];
      v36 = v35[3];
      v53 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v55 = sub_23BE2CEB4(v36 > 1, v37 + 1, 1, v35);
      }

      else
      {
        v55 = v35;
      }

      v38 = v60;
      (*(v60 + 8))(v11, v4);
      v40 = v55;
      v39 = v56;
      *(v55 + 16) = v53;
      v28((v40 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37), v39, v4);
    }

    else
    {
      (*v23)(v11, v4);
    }

    v14 = v27;
    sub_23BE325F8();
    v24 = v55;
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_35:
  (*(v58 + 8))(v14, v59);

  return v24;
}

uint64_t sub_23BDF5A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Scene();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDF5A94(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23BDE652C(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23BDF5AF4()
{
  result = qword_27E1C8298;
  if (!qword_27E1C8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8298);
  }

  return result;
}

uint64_t sub_23BDF5B48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BDF5B90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23BDF5BE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23BDF5BFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23BDF5C60(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_23BDF5C7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23BDF5CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BDF5D08(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for TimeRule()
{
  result = qword_27E1C82C0;
  if (!qword_27E1C82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BDF5DA4()
{
  result = sub_23BE326D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeUnit(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 17))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TimeUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_23BDF5EC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_23BDF5EF8(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_23BDF5F34(void *a1)
{
  v3 = v1;
  v5 = sub_23BDE652C(&qword_27E1C82F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDF80C4();
  sub_23BE32E28();
  LOBYTE(v17) = 0;
  sub_23BE326D8();
  sub_23BDF822C(&qword_27E1C7D50, MEMORY[0x277CC95F0]);
  sub_23BE32D08();
  if (!v2)
  {
    v9 = type metadata accessor for TimeRule();
    v10 = (v3 + *(v9 + 20));
    v11 = *(v10 + 16);
    v17 = *v10;
    v18 = v11;
    v16 = 1;
    sub_23BDF8274();
    sub_23BE32D08();
    v12 = (v3 + *(v9 + 24));
    v13 = *(v12 + 16);
    v17 = *v12;
    v18 = v13;
    v16 = 2;
    sub_23BE32D08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BDF6164@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_23BE326D8();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23BDE652C(&qword_27E1C82E0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TimeRule();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE326C8();
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDF80C4();
  sub_23BE32E18();
  if (v2)
  {
    v11 = v25;
    sub_23BDE6478(a1);
    return (*(v11 + 8))(v10, v4);
  }

  else
  {
    v20 = v8;
    v12 = v22;
    LOBYTE(v26) = 0;
    sub_23BDF822C(&qword_27E1C7CF0, MEMORY[0x277CC95F0]);
    v13 = v23;
    sub_23BE32C88();
    (*(v25 + 40))(v10, v13, v4);
    v28 = 1;
    sub_23BDF8118();
    sub_23BE32C88();
    v14 = v27;
    v15 = &v10[*(v20 + 20)];
    *v15 = v26;
    v15[16] = v14;
    v28 = 2;
    sub_23BE32C88();
    (*(v12 + 8))(v7, v24);
    v17 = v27;
    v18 = v21;
    v19 = &v10[*(v20 + 24)];
    *v19 = v26;
    v19[16] = v17;
    sub_23BDF816C(v10, v18);
    sub_23BDE6478(a1);
    return sub_23BDF81D0(v10);
  }
}

uint64_t sub_23BDF6520()
{
  v1 = 1920298856;
  if (*v0 != 1)
  {
    v1 = 0x6574756E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23BDF6564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDF82C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDF658C(uint64_t a1)
{
  v2 = sub_23BDF80C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF65C8(uint64_t a1)
{
  v2 = sub_23BDF80C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23BDF6608(uint64_t a1)
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BDF822C(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  sub_23BDECDEC(*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8), *(v1 + *(a1 + 20) + 16));
}

void sub_23BDF66D0(uint64_t a1, uint64_t a2)
{
  sub_23BE326D8();
  sub_23BDF822C(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  sub_23BDECDEC(*(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8), *(v2 + *(a2 + 20) + 16));
}

void sub_23BDF6784(uint64_t a1, uint64_t a2)
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BDF822C(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  sub_23BDECDEC(*(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8), *(v2 + *(a2 + 20) + 16));
}

uint64_t sub_23BDF6878(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a4;
  v39 = a3;
  v51 = a2;
  v5 = sub_23BDE652C(&qword_27E1C8378);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - v6;
  v7 = sub_23BDE652C(&qword_27E1C8380);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v39 - v8;
  v9 = sub_23BDE652C(&qword_27E1C8388);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = sub_23BDE652C(&qword_27E1C8390);
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = sub_23BDE652C(&qword_27E1C8398);
  v40 = *(v15 - 8);
  v41 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = sub_23BDE652C(&qword_27E1C83A0);
  v19 = *(v18 - 8);
  v53 = v18;
  v54 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDF9034();
  v22 = v21;
  v23 = v52;
  sub_23BE32E28();
  v24 = v23 >> 5;
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      if (v24 != 3)
      {
        v56 = 0;
        sub_23BDF9280();
        v35 = v53;
        sub_23BE32CA8();
        (*(v40 + 8))(v17, v41);
        return (*(v54 + 8))(v22, v35);
      }

      v67 = 4;
      sub_23BDF9088();
      v25 = v42;
      v26 = v53;
      sub_23BE32CA8();
      v66 = v51;
      sub_23BDF92D4();
      v27 = v45;
      sub_23BE32D08();
      v28 = v44;
      goto LABEL_14;
    }

    v65 = 3;
    sub_23BDF9130();
    v25 = v43;
    v26 = v53;
    sub_23BE32CA8();
    v64 = 0;
    v27 = v47;
    v34 = v55;
    sub_23BE32CF8();
    if (!v34)
    {
      v63 = 1;
      sub_23BE32CF8();
      v62 = v23 & 1;
      v61 = 2;
      sub_23BDF9328();
      sub_23BE32D08();
      v28 = v46;
LABEL_14:
      (*(v28 + 8))(v25, v27);
      return (*(v54 + 8))(v22, v26);
    }

    (*(v46 + 8))(v25, v27);
    return (*(v54 + 8))(v22, v26);
  }

  v30 = v48;
  v29 = v49;
  v31 = v11;
  v32 = v50;
  if (!v24)
  {
    v33 = v12;
    v57 = 1;
    sub_23BDF922C();
    v26 = v53;
    sub_23BE32CA8();
    sub_23BE32CF8();
    (*(v30 + 8))(v14, v33);
    return (*(v54 + 8))(v22, v26);
  }

  v60 = 2;
  sub_23BDF91D8();
  v37 = v53;
  sub_23BE32CA8();
  v59 = 0;
  v38 = v55;
  sub_23BE32CF8();
  if (!v38)
  {
    v58 = 1;
    sub_23BE32CF8();
  }

  (*(v29 + 8))(v31, v32);
  return (*(v54 + 8))(v22, v37);
}

uint64_t sub_23BDF6F74(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_23BDE652C(&qword_27E1C8490);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = sub_23BDE652C(&qword_27E1C8498);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = sub_23BDE652C(&qword_27E1C84A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDFA130();
  sub_23BE32E28();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_23BDFA184();
    sub_23BE32CA8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_23BDFA1D8();
    sub_23BE32CA8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_23BDF7230(uint64_t a1)
{
  v2 = sub_23BDF9280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF726C(uint64_t a1)
{
  v2 = sub_23BDF9280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF72A8()
{
  v1 = *v0;
  v2 = 7958113;
  v3 = 0x65676E6172;
  v4 = 0x6E6964756C637865;
  if (v1 != 3)
  {
    v4 = 0x65766974616C6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7463617865;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23BDF7338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDF83D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDF736C(uint64_t a1)
{
  v2 = sub_23BDF9034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF73A8(uint64_t a1)
{
  v2 = sub_23BDF9034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF73F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDF747C(uint64_t a1)
{
  v2 = sub_23BDF922C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF74B8(uint64_t a1)
{
  v2 = sub_23BDF922C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF74F4()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_23BDF753C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BDF8584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDF7564(uint64_t a1)
{
  v2 = sub_23BDF9130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF75A0(uint64_t a1)
{
  v2 = sub_23BDF9130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF75DC()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_23BDF760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_23BE32D48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BE32D48();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BDF76E4(uint64_t a1)
{
  v2 = sub_23BDF91D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF7720(uint64_t a1)
{
  v2 = sub_23BDF91D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF777C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDF7808(uint64_t a1)
{
  v2 = sub_23BDF9088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF7844(uint64_t a1)
{
  v2 = sub_23BDF9088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF7880@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BDF8698(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_23BDF7960()
{
  if (*v0)
  {
    return 0x6465726975716572;
  }

  else
  {
    return 0x6572726566657270;
  }
}

uint64_t sub_23BDF79A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6572726566657270 && a2 == 0xE900000000000064;
  if (v6 || (sub_23BE32D48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BE32D48();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BDF7A84(uint64_t a1)
{
  v2 = sub_23BDFA130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF7AC0(uint64_t a1)
{
  v2 = sub_23BDFA130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF7AFC(uint64_t a1)
{
  v2 = sub_23BDFA1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF7B38(uint64_t a1)
{
  v2 = sub_23BDFA1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF7B74(uint64_t a1)
{
  v2 = sub_23BDFA184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDF7BB0(uint64_t a1)
{
  v2 = sub_23BDFA184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDF7BEC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BDF9C74(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void sub_23BDF7C38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_23BE32DC8();
  sub_23BDECDEC(v1, v2, v3);
}

void sub_23BDF7CC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_23BE32DC8();
  sub_23BDECDEC(v1, v2, v3);
}

unint64_t sub_23BDF7D3C()
{
  result = qword_27E1C82D8;
  if (!qword_27E1C82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C82D8);
  }

  return result;
}

uint64_t sub_23BDF7D90(uint64_t a1, uint64_t a2)
{
  if ((sub_23BE326B8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TimeRule();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = a2 + v5;
  v10 = *(a2 + v5);
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = v8 >> 5;
  if (v8 >> 5 <= 1)
  {
    if (v13)
    {
      if ((v12 & 0xE0) != 0x20 || v6 != v10 || v7 != v11)
      {
        return 0;
      }
    }

    else if (v12 > 0x1F || v6 != v10)
    {
      return 0;
    }
  }

  else if (v13 == 2)
  {
    if ((v12 & 0xE0) != 0x40)
    {
      return 0;
    }

    v16 = v6 == v10 && v7 == v11;
    if (!v16 || ((v12 ^ v8) & 1) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (v13 != 3 || (v12 & 0xE0) != 0x60)
    {
      return 0;
    }

    v14 = v6 >> 6;
    if (v14)
    {
      if (v14 == 1)
      {
        if ((v10 & 0xC0) != 0x40 || ((v10 ^ v6) & 0x3F) != 0)
        {
          return 0;
        }
      }

      else if (v6 == 128)
      {
        if (v10 != 128)
        {
          return 0;
        }
      }

      else if (v10 != 129)
      {
        return 0;
      }
    }

    else if (v10 >= 0x40u || (v10 & 0x3F) != v6)
    {
      return 0;
    }
  }

  v19 = *(v4 + 24);
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = *(a1 + v19 + 16);
  v23 = a2 + v19;
  v24 = *(a2 + v19);
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = v22 >> 5;
  if (v22 >> 5 <= 1)
  {
    if (v27)
    {
      return (v26 & 0xE0) == 0x20 && v20 == v24 && v21 == v25;
    }

    else
    {
      return v26 < 0x20 && v20 == v24;
    }
  }

  if (v27 == 2)
  {
    if ((v26 & 0xE0) == 0x40 && v20 == v24 && v21 == v25)
    {
      return ((v26 ^ v22) & 1) == 0;
    }

    return 0;
  }

  if (v27 != 3 || (v26 & 0xE0) != 0x60)
  {
    return 0;
  }

  v28 = v20 >> 6;
  if (!v28)
  {
    if (v24 < 0x40u)
    {
      return (v24 & 0x3F) == v20;
    }

    return 0;
  }

  if (v28 == 1)
  {
    if ((v24 & 0xC0) == 0x40)
    {
      return ((v24 ^ v20) & 0x3FLL) == 0;
    }

    return 0;
  }

  if (v20 == 128)
  {
    if (v24 != 128)
    {
      return 0;
    }
  }

  else if (v24 != 129)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_23BDF7FC8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a3 >> 5;
  if (v6 <= 1)
  {
    v10 = a6 < 0x20u && a1 == a4;
    v13 = (a6 & 0xE0) == 0x20 && a1 == a4 && a2 == a5;
    if (a3 >> 5)
    {
      return v13;
    }

    else
    {
      return v10;
    }
  }

  else if (v6 == 2)
  {
    v14 = ((a6 ^ a3) & 1) == 0;
    if (a2 != a5)
    {
      v14 = 0;
    }

    if (a1 != a4)
    {
      v14 = 0;
    }

    return (a6 & 0xE0) == 0x40 && v14;
  }

  else
  {
    if (v6 != 3 || (a6 & 0xE0) != 0x60)
    {
      return 0;
    }

    v7 = a1 >> 6;
    if (v7)
    {
      if (v7 == 1)
      {
        return (a4 & 0xC0) == 0x40 && ((a4 ^ a1) & 0x3F) == 0;
      }

      if (a1 == 128)
      {
        if (a4 != 128)
        {
          return 0;
        }
      }

      else if (a4 != 129)
      {
        return 0;
      }

      return 1;
    }

    return a4 < 0x40u && (a4 & 0x3F) == a1;
  }
}

unint64_t sub_23BDF80C4()
{
  result = qword_27E1C82E8;
  if (!qword_27E1C82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C82E8);
  }

  return result;
}

unint64_t sub_23BDF8118()
{
  result = qword_27E1C82F0;
  if (!qword_27E1C82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C82F0);
  }

  return result;
}

uint64_t sub_23BDF816C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BDF81D0(uint64_t a1)
{
  v2 = type metadata accessor for TimeRule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BDF822C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BDF8274()
{
  result = qword_27E1C8300;
  if (!qword_27E1C8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8300);
  }

  return result;
}

uint64_t sub_23BDF82C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23BDF83D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7958113 && a2 == 0xE300000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617865 && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6964756C637865 && a2 == 0xE900000000000067 || (sub_23BE32D48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23BDF8584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23BDF8698(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C8308);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x28223BE20](v2);
  v57 = &v44 - v4;
  v50 = sub_23BDE652C(&qword_27E1C8310);
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v44 - v5;
  v49 = sub_23BDE652C(&qword_27E1C8318);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v56 = &v44 - v6;
  v7 = sub_23BDE652C(&qword_27E1C8320);
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = sub_23BDE652C(&qword_27E1C8328);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = sub_23BDE652C(&qword_27E1C8330);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = a1[3];
  v58 = a1;
  sub_23BDE9BF0(a1, v18);
  sub_23BDF9034();
  v19 = v59;
  sub_23BE32E18();
  if (!v19)
  {
    v20 = v13;
    v45 = v11;
    v21 = v56;
    v22 = v57;
    v59 = v15;
    v23 = sub_23BE32C98();
    v24 = (2 * *(v23 + 16)) | 1;
    v60 = v23;
    v61 = v23 + 32;
    v62 = 0;
    v63 = v24;
    v25 = sub_23BE0559C();
    if (v25 == 5 || v62 != v63 >> 1)
    {
      v29 = sub_23BE32B78();
      swift_allocError();
      v30 = v14;
      v32 = v31;
      sub_23BDE652C(&qword_27E1C7E20);
      *v32 = &type metadata for TimeUnit;
      sub_23BE32C28();
      sub_23BE32B38();
      (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v59 + 8))(v17, v30);
      swift_unknownObjectRelease();
    }

    else if (v25 <= 1u)
    {
      if (v25)
      {
        v65 = 1;
        sub_23BDF922C();
        v40 = v10;
        sub_23BE32C18();
        v41 = v59;
        v42 = v47;
        v10 = sub_23BE32C78();
        (*(v48 + 8))(v40, v42);
        (*(v41 + 8))(v17, v14);
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0;
        sub_23BDF9280();
        v34 = v20;
        sub_23BE32C18();
        v35 = v59;
        (*(v46 + 8))(v34, v45);
        (*(v35 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v10 = 0;
      }
    }

    else if (v25 == 2)
    {
      v65 = 2;
      sub_23BDF91D8();
      v36 = v21;
      sub_23BE32C18();
      v65 = 0;
      v37 = v49;
      v10 = sub_23BE32C78();
      v65 = 1;
      sub_23BE32C78();
      (*(v51 + 8))(v36, v37);
      (*(v59 + 8))(v17, v14);
      swift_unknownObjectRelease();
    }

    else if (v25 == 3)
    {
      v65 = 3;
      sub_23BDF9130();
      v26 = v55;
      sub_23BE32C18();
      v27 = v59;
      v65 = 0;
      v28 = v50;
      v10 = sub_23BE32C78();
      v65 = 1;
      sub_23BE32C78();
      v43 = v54;
      v64 = 2;
      sub_23BDF9184();
      sub_23BE32C88();
      (*(v43 + 8))(v26, v28);
      (*(v27 + 8))(v17, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v65 = 4;
      sub_23BDF9088();
      sub_23BE32C18();
      v38 = v59;
      sub_23BDF90DC();
      v39 = v52;
      sub_23BE32C88();
      (*(v53 + 8))(v22, v39);
      (*(v38 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v10 = v65;
    }
  }

  sub_23BDE6478(v58);
  return v10;
}

unint64_t sub_23BDF9034()
{
  result = qword_27E1C8338;
  if (!qword_27E1C8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8338);
  }

  return result;
}

unint64_t sub_23BDF9088()
{
  result = qword_27E1C8340;
  if (!qword_27E1C8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8340);
  }

  return result;
}

unint64_t sub_23BDF90DC()
{
  result = qword_27E1C8348;
  if (!qword_27E1C8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8348);
  }

  return result;
}

unint64_t sub_23BDF9130()
{
  result = qword_27E1C8350;
  if (!qword_27E1C8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8350);
  }

  return result;
}

unint64_t sub_23BDF9184()
{
  result = qword_27E1C8358;
  if (!qword_27E1C8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8358);
  }

  return result;
}

unint64_t sub_23BDF91D8()
{
  result = qword_27E1C8360;
  if (!qword_27E1C8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8360);
  }

  return result;
}

unint64_t sub_23BDF922C()
{
  result = qword_27E1C8368;
  if (!qword_27E1C8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8368);
  }

  return result;
}

unint64_t sub_23BDF9280()
{
  result = qword_27E1C8370;
  if (!qword_27E1C8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8370);
  }

  return result;
}

unint64_t sub_23BDF92D4()
{
  result = qword_27E1C83A8;
  if (!qword_27E1C83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83A8);
  }

  return result;
}

unint64_t sub_23BDF9328()
{
  result = qword_27E1C83B0;
  if (!qword_27E1C83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeUnit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}