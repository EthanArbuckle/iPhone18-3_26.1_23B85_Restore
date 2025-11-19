id CameraView.body.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_23B76D1E4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_23B76D1FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B76D244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23B76D294()
{
  result = qword_27E180650;
  if (!qword_27E180650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180650);
  }

  return result;
}

id sub_23B76D2FC()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD1968]) init];
  [v2 setCameraSource_];
  return v2;
}

uint64_t sub_23B76D3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B76D4AC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B76D420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B76D4AC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B76D484()
{
  sub_23B76D4AC();
  sub_23B76D590();
  __break(1u);
}

unint64_t sub_23B76D4AC()
{
  result = qword_27E180658;
  if (!qword_27E180658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180658);
  }

  return result;
}