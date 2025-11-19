void (*Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 168);
  if (*(v6 + 172))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 168) = v2;
  *(v7 + 172) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemIdot.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 172) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemIdot()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 168) = 0;
  *(v5 + 172) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 180))
  {
    return 0;
  }

  else
  {
    return *(v1 + 176);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satID.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 176) = a1;
  *(v7 + 180) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.satID.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 176);
  if (*(v6 + 180))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.satID.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.satID.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 176) = v2;
  *(v7 + 180) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasSatID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 180) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearSatID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 176) = 0;
  *(v5 + 180) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemUra.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 188))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemUra.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 184) = a1;
  *(v7 + 188) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemUra.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 184);
  if (*(v6 + 188))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemUra.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemUra.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 184) = v2;
  *(v7 + 188) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemUra.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 188) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemUra()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 196))
  {
    return 0;
  }

  else
  {
    return *(v1 + 192);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 192) = a1;
  *(v7 + 196) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 192);
  if (*(v6 + 196))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 192) = v2;
  *(v7 + 196) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemSvHealth.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 196) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemSvHealth()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 204))
  {
    return 0;
  }

  else
  {
    return *(v1 + 200);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 200) = a1;
  *(v7 + 204) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 200);
  if (*(v6 + 204))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 200) = v2;
  *(v7 + 204) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemAf2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 204) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemAf2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 200) = 0;
  *(v5 + 204) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 212))
  {
    return 0;
  }

  else
  {
    return *(v1 + 208);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satStatus.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 208) = a1;
  *(v7 + 212) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.satStatus.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 208);
  if (*(v6 + 212))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.satStatus.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.satStatus.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 208) = v2;
  *(v7 + 212) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasSatStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 212) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearSatStatus()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 208) = 0;
  *(v5 + 212) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 220))
  {
    return 0;
  }

  else
  {
    return *(v1 + 216);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 216) = a1;
  *(v7 + 220) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 216);
  if (*(v6 + 220))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 216) = v2;
  *(v7 + 220) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCodeOnL2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 220) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCodeOnL2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 216) = 0;
  *(v5 + 220) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 228))
  {
    return 0;
  }

  else
  {
    return *(v1 + 224);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 224) = a1;
  *(v7 + 228) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 224);
  if (*(v6 + 228))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 224) = v2;
  *(v7 + 228) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemL2Pflag.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 228) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemL2Pflag()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 224) = 0;
  *(v5 + 228) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 236))
  {
    return 0;
  }

  else
  {
    return *(v1 + 232);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 232) = a1;
  *(v7 + 236) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 232);
  if (*(v6 + 236))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 232) = v2;
  *(v7 + 236) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemTgd.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 236) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemTgd()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 232) = 0;
  *(v5 + 236) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 244))
  {
    return 0;
  }

  else
  {
    return *(v1 + 240);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 240) = a1;
  *(v7 + 244) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 240);
  if (*(v6 + 244))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 240) = v2;
  *(v7 + 244) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemFitFlag.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 244) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemFitFlag()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 240) = 0;
  *(v5 + 244) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 252))
  {
    return 0;
  }

  else
  {
    return *(v1 + 248);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 248) = a1;
  *(v7 + 252) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 248);
  if (*(v6 + 252))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 248) = v2;
  *(v7 + 252) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemAodo.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 252) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemAodo()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 248) = 0;
  *(v5 + 252) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved1.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 260))
  {
    return 0;
  }

  else
  {
    return *(v1 + 256);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved1.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 256) = a1;
  *(v7 + 260) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved1.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 256);
  if (*(v6 + 260))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.reserved1.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved1.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 256) = v2;
  *(v7 + 260) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved1.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 260) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved1()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 256) = 0;
  *(v5 + 260) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 268))
  {
    return 0;
  }

  else
  {
    return *(v1 + 264);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved2.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 264) = a1;
  *(v7 + 268) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved2.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 264);
  if (*(v6 + 268))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.reserved2.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved2.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 264) = v2;
  *(v7 + 268) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 268) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 264) = 0;
  *(v5 + 268) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved3.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 276))
  {
    return 0;
  }

  else
  {
    return *(v1 + 272);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved3.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 272) = a1;
  *(v7 + 276) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved3.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 272);
  if (*(v6 + 276))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.reserved3.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved3.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 272) = v2;
  *(v7 + 276) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved3.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 276) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved3()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 272) = 0;
  *(v5 + 276) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved4.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 284))
  {
    return 0;
  }

  else
  {
    return *(v1 + 280);
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved4.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 280) = a1;
  *(v7 + 284) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved4.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 280);
  if (*(v6 + 284))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_GpsEphemeris.reserved4.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved4.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 280) = v2;
  *(v7 + 284) = 0;

  free(v1);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved4.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 284) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved4()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v6 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 280) = 0;
  *(v5 + 284) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.nrOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.nrOfSats.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsNavigationModel.clearNrOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.sessionProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 28));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.sessionProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 32));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.posProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.sessionID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsNavigationModel.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  v5 = a1 + v2[6];
  *v5 = 0;
  v5[4] = 1;
  *(a1 + v2[7]) = 6;
  *(a1 + v2[8]) = 7;
  v6 = a1 + v2[9];
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_CplaneConfig.earlyReturnEnabled.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CplaneConfig.earlyReturnEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 20), v6, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  *(a1 + v8[6]) = 2;
  v10 = a1 + v8[7];
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.config.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_CplaneContext.config.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    v17 = v14 + v9[7];
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  }

  return Proto_Gnss_Emergency_CplaneContext.config.modify;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.cdmaContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 24), v6, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  *(a1 + v8[6]) = 2;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  }

  return result;
}

int *Proto_Gnss_Emergency_Cdma1xContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.cdmaContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CplaneContext.cdmaContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  }

  return Proto_Gnss_Emergency_CplaneContext.cdmaContext.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.heloEnabled.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EmergConfig.heloEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t (*Proto_Gnss_Emergency_EmergConfig.imsi.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.cplaneConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.cplaneConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_EmergConfig.cplaneConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  }

  return Proto_Gnss_Emergency_EmergConfig.cplaneConfig.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.suplConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  *(a1 + v8[9]) = 2;
  *(a1 + v8[10]) = 2;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.suplConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_EmergConfig.suplConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  }

  return Proto_Gnss_Emergency_EmergConfig.suplConfig.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  *(a1 + v2[5]) = 2;
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  v4 = v2[7];
  v5 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.codePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.codePhase.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.doppler0.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.doppler0.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearDoppler0()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.doppler1.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.doppler1.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearDoppler1()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.dopplerUncer.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.dopplerUncer.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearDopplerUncer()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.intCodePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.intCodePhase.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearIntCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.gpsBitNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.gpsBitNumber.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearGpsBitNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.codePhaseSearchWindow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.codePhaseSearchWindow.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearCodePhaseSearchWindow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.azimuth.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.azimuth.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearAzimuth()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.elevation.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.elevation.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 52);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearElevation()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.satID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.satID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 56);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearSatID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.azimuthLsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.azimuthLsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 60);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearAzimuthLsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 60);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.elevationLsb.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.elevationLsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 64);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.elevationLsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearElevationLsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.dopplerUncerExt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 68));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.dopplerUncerExt.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.dopplerUncerExt.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 68);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *Proto_Gnss_Emergency_GpsAcqElement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[12];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + result[13];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + result[14];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + result[15];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + result[16];
  *v14 = 0;
  *(v14 + 4) = 1;
  *(a1 + result[17]) = 7;
  return result;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.gpsTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.gpsTow.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearGpsTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.nrOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.nrOfSats.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearNrOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 32), v6, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 6;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  return Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.confidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.sessionProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 40));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.sessionProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.posProtocol.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 44));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.posProtocol.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.sessionID.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = &a1[v2[6]];
  *v4 = 0;
  v4[4] = 1;
  v5 = &a1[v2[7]];
  *v5 = 0;
  v5[4] = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  result = (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v9 = &a1[v2[9]];
  *v9 = 0;
  v9[4] = 1;
  a1[v2[10]] = 6;
  a1[v2[11]] = 7;
  v10 = &a1[v2[12]];
  *v10 = 0;
  v10[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.networkType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.networkType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellFTAssistanceRequest.networkType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CplaneConfig.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.result.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 20));
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.result.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellFTAssistance.result.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.networkType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 24));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.networkType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellFTAssistance.networkType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.cellTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 28), v6, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.cellTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellFTAssistance.cellTime.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  return Proto_Gnss_Emergency_CellFTAssistance.cellTime.modify;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(a1 + v2[5]) = 10;
  *(a1 + v2[6]) = 6;
  v3 = v2[7];
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.latitudeDegrees.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.latitudeDegrees.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.latitudeDegrees.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearLatitudeDegrees()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.longitudeDegrees.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.longitudeDegrees.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.longitudeDegrees.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearLongitudeDegrees()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_Configuration.targetVerticalUncertaintyM.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.altitudeMeters.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.altitudeMeters.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearAltitudeMeters()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.verUncertMeters.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.verUncertMeters.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.verUncertMeters.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearVerUncertMeters()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.horzUncertMeters.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.horzUncertMeters.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.horzUncertMeters.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearHorzUncertMeters()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.horzConfidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.horzConfidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearHorzConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.vertConfidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.vertConfidence.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearVertConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.gpsTowSeconds.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceTime.gpsTowSeconds.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceTime.clearGpsTowSeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.gpsWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceTime.gpsWeek.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceTime.clearGpsWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.gpsTimeUncertainty.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceTime.gpsTimeUncertainty.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceTime.clearGpsTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801VelocityInfo.horz.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801VelocityInfo.horz.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801VelocityInfo.clearHorz()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801VelocityInfo.heading.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801VelocityInfo.heading.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801VelocityInfo.clearHeading()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801VelocityInfo.vertical.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801VelocityInfo.vertical.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801VelocityInfo.clearVertical()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801ClockInfo.bias.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801ClockInfo.bias.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801ClockInfo.clearBias()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801ClockInfo.drift.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801ClockInfo.drift.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801ClockInfo.clearDrift()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801HeightInfo.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801HeightInfo.altitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801HeightInfo.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801HeightInfo.altitudeUnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801HeightInfo.altitudeUnc.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801HeightInfo.clearAltitudeUnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.latitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.latitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.longitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.longitude.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.locUncAng.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.locUncAng.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLocUncAng()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.locUncA.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.locUncA.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLocUncA()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.locUncP.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.locUncP.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLocUncP()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.fixType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 40));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.fixType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.fixType.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.velocityIncluded.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.velocityIncluded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.velocity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 48), v6, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.velocity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 48);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_Is801LocationInd.velocity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 48);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  }

  return Proto_Gnss_Emergency_Is801LocationInd.velocity.modify;
}

BOOL Proto_Gnss_Emergency_GanssMeasurements.hasGanssMeasurement.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v13 + 48), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of Any?(v12, a1, a2);
  return v15;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.clearGanssMeasurement()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 48);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.clockIncluded.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.clockIncluded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.clock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 56), v6, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.clock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_Is801LocationInd.clock.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  }

  return Proto_Gnss_Emergency_Is801LocationInd.clock.modify;
}

BOOL Proto_Gnss_Emergency_Is801LocationInd.hasClock.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v5 + 56), v4, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearClock()()
{
  v1 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v2 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.altitudeIncluded.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.altitudeIncluded.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 60);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.altitude.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v7 + 64), v6, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.altitude.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_Is801LocationInd.altitude.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  }

  return Proto_Gnss_Emergency_Is801LocationInd.altitude.modify;
}

void Proto_Gnss_Emergency_SuplInitVer2Extension.eSlpaddress.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v12, v11, a6);
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, a6);
  }

  else
  {
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Proto_Gnss_Emergency_Is801LocationInd.hasAltitude.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v5 + 64), v4, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearAltitude()()
{
  v1 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v2 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a1 + v2[10]) = 4;
  *(a1 + v2[11]) = 2;
  v8 = v2[12];
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  *(a1 + v2[13]) = 2;
  v10 = v2[14];
  v11 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v2[15]) = 2;
  v12 = v2[16];
  v13 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a1 + v12, 1, 1, v13);
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.result.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.result.modify;
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.responseType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.responseType.modify;
}

uint64_t Proto_Gnss_Emergency_PositionReport.sessionInfo.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v11 + v12, v10, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v14 = *(*(v13 - 1) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, a3, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  UnknownStorage.init()();
  *(a3 + v13[5]) = 6;
  *(a3 + v13[6]) = 7;
  v15 = a3 + v13[7];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v14)(v10, 1, v13);
  if (result != 1)
  {
    return outlined destroy of Any?(v10, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v16 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *(v3 + *(a1(0) + 20));
  v12 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v11 + v12, v10, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  UnknownStorage.init()();
  v15 = *(v13 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a3 + v15) = static Proto_Gnss_Emergency_GpsMeasurements._StorageClass.defaultInstance;
  v16 = v14(v10, 1, v13);

  if (v16 != 1)
  {
    return outlined destroy of Any?(v10, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  v16 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Proto_Gnss_Emergency_GpsMeasurements._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasGpsMeasurements.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearGpsMeasurements()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v7 + v8, v6, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v6, a1, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  }

  UnknownStorage.init()();
  v11 = a1 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v9[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v9[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v9[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  *(a1 + v9[10]) = 4;
  *(a1 + v9[11]) = 2;
  v16 = v9[12];
  v17 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  *(a1 + v9[13]) = 2;
  v18 = v9[14];
  v19 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  *(a1 + v9[15]) = 2;
  v20 = v9[16];
  v21 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  (*(*(v21 - 8) + 56))(a1 + v20, 1, 1, v21);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v6, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v7, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  v16 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v11 + v17, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    *(v14 + v9[10]) = 4;
    *(v14 + v9[11]) = 2;
    v24 = v9[12];
    v25 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    *(v14 + v9[13]) = 2;
    v26 = v9[14];
    v27 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
    (*(*(v27 - 8) + 56))(v14 + v26, 1, 1, v27);
    *(v14 + v9[15]) = 2;
    v28 = v9[16];
    v29 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
    (*(*(v29 - 8) + 56))(v14 + v28, 1, 1, v29);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  }

  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v15, v19, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v7 + v20, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v14, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v14, v19, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v19, v24 + v33, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasLocationIndication.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v6 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v5 + v6, v4, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of Any?(v4, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  return v8;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearLocationIndication()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v9 + v15, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  if (*(v1 + v2) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  result = swift_beginAccess();
  *(v7 + v12) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  *(v7 + v14) = v2;

  free(v1);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasAfltAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  return *(v1 + v2) != 4;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearAfltAction()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  *(v5 + v10) = 4;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) & 1;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    a4(v14);

    *(v9 + v11) = v18;
    v14 = v18;
  }

  v19 = *a5;
  result = swift_beginAccess();
  *(v14 + v19) = a1 & 1;
  return result;
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.isMeasInCdmaTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.isMeasInCdmaTime.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.modify(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 72);
  v11 = *(*a1 + 84);
  v12 = *(v10 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = *(v8 + 80);
    v16 = *(v8 + 72);
    v17 = a3(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    a4(v14);

    *(v16 + v15) = v20;
    v14 = v20;
  }

  v21 = *a5;
  swift_beginAccess();
  *(v14 + v21) = v11;

  free(v8);
}

BOOL Proto_Gnss_Emergency_MeasurementReport.hasIsMeasInCdmaTime.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 2;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.clearIsMeasInCdmaTime()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), uint64_t *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = a2(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    a3(v12);

    *(v8 + v9) = v16;
    v12 = v16;
  }

  v17 = *a4;
  result = swift_beginAccess();
  *(v12 + v17) = 2;
  return result;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.include1XMsb.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.include1XMsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.optimizeGnssMeasWith1XMsb.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.optimizeGnssMeasWith1XMsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.optimizeAfltMeasWith1XMsb.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.optimizeAfltMeasWith1XMsb.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.useCdmaTimeForMeas.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.useCdmaTimeForMeas.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Configuration.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v1 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 28);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 24);
LABEL_10:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 1:
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_Configuration(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t Proto_Gnss_Emergency_Configuration.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  v4 = (v0 + *(v3 + 28));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Configuration@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Configuration(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Configuration(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Configuration(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SummaryReport.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v6);

    *(v2 + v3) = v7;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 11:
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_18;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_18;
        case 8:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
          goto LABEL_17;
        case 9:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession();
          goto LABEL_17;
        case 10:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol();
          goto LABEL_17;
        case 14:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType();
          goto LABEL_17;
        case 15:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode();
LABEL_17:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_18;
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_18;
        case 18:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_18;
        case 19:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_18:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  result = swift_beginAccess();
  if (*(v2 + 24))
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v2 + 16);
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v2 + 40) & 1) == 0)
  {
    v5 = *(v2 + 32);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 56) & 1) == 0)
  {
    v6 = *(v2 + 48);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 72) & 1) == 0)
  {
    v7 = *(v2 + 64);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 88) & 1) == 0)
  {
    v8 = *(v2 + 80);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v2 + 104) & 1) == 0)
  {
    v9 = *(v2 + 96);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #8 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #9 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #10 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #11 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #12 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #13 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #14 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #15 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #16 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #17 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #18 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  closure #19 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v2);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v3 = *(a1 + 108);
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 113) != 18)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 114) != 4)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 115) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    v3 = *(a1 + 136);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 160) & 1) == 0)
  {
    v3 = *(a1 + 152);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 161) != 8)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 162) != 17)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 163) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 164) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #18 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    v3 = *(a1 + 168);
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #19 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 184) & 1) == 0)
  {
    v3 = *(a1 + 180);
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static Proto_Gnss_Emergency_SummaryReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 48))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  swift_beginAccess();
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 64))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  swift_beginAccess();
  v18 = *(a2 + 88);
  if (v17)
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 80))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  swift_beginAccess();
  v21 = *(a2 + 104);
  if (v20)
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 96))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 108);
  v23 = *(a1 + 112);
  swift_beginAccess();
  v24 = *(a2 + 112);
  if (v23)
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 108))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 113);
  swift_beginAccess();
  v26 = *(a2 + 113);
  if (v25 == 18)
  {
    if (v26 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v26 == 18 || v25 != v26)
    {
      return result;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 114);
  swift_beginAccess();
  v29 = *(a2 + 114);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v29 == 4 || v28 != v29)
    {
      return result;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 115);
  swift_beginAccess();
  v31 = *(a2 + 115);
  if (v30 == 7)
  {
    if (v31 != 7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v31 == 7 || v30 != v31)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 120);
  v33 = *(a1 + 128);
  swift_beginAccess();
  v34 = *(a2 + 128);
  if (v33)
  {
    if (!*(a2 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v32 != *(a2 + 120))
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 136);
  v36 = *(a1 + 144);
  swift_beginAccess();
  v37 = *(a2 + 144);
  if (v36)
  {
    if (!*(a2 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (v35 != *(a2 + 136))
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 152);
  v39 = *(a1 + 160);
  swift_beginAccess();
  v40 = *(a2 + 160);
  if (v39)
  {
    if (!*(a2 + 160))
    {
      return 0;
    }
  }

  else
  {
    if (v38 != *(a2 + 152))
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 161);
  swift_beginAccess();
  v42 = *(a2 + 161);
  if (v41 == 8)
  {
    if (v42 != 8)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v42 == 8 || v41 != v42)
    {
      return result;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 162);
  swift_beginAccess();
  v44 = *(a2 + 162);
  if (v43 == 17)
  {
    if (v44 != 17)
    {
      return 0;
    }

    goto LABEL_86;
  }

  result = 0;
  if (v44 != 17 && v43 == v44)
  {
LABEL_86:
    swift_beginAccess();
    v45 = *(a1 + 163);
    swift_beginAccess();
    v46 = *(a2 + 163);
    if (v45 == 2)
    {
      if (v46 != 2)
      {
        return 0;
      }
    }

    else if (v46 == 2 || ((v45 ^ v46) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v47 = *(a1 + 164);
    swift_beginAccess();
    v48 = *(a2 + 164);
    if (v47 == 2)
    {
      if (v48 != 2)
      {
        return 0;
      }
    }

    else if (v48 == 2 || ((v47 ^ v48) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v49 = *(a1 + 168);
    v50 = *(a1 + 176);
    swift_beginAccess();
    v51 = *(a2 + 176);
    if ((v50 & 1) == 0)
    {
      if (v49 != *(a2 + 168))
      {
        v51 = 1;
      }

      if (v51)
      {
        return 0;
      }

LABEL_102:
      swift_beginAccess();
      v52 = *(a1 + 180);
      v53 = *(a1 + 184);
      swift_beginAccess();
      v54 = *(a2 + 184);
      if (v53)
      {
        if (!*(a2 + 184))
        {
          return 0;
        }
      }

      else
      {
        if (v52 != *(a2 + 180))
        {
          v54 = 1;
        }

        if (v54)
        {
          return 0;
        }
      }

      return 1;
    }

    if (*(a2 + 176))
    {
      goto LABEL_102;
    }

    return 0;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SummaryReport and conformance Proto_Gnss_Emergency_SummaryReport, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SummaryReport and conformance Proto_Gnss_Emergency_SummaryReport, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SummaryReport and conformance Proto_Gnss_Emergency_SummaryReport, type metadata accessor for Proto_Gnss_Emergency_SummaryReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SuplConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 36);
LABEL_3:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 2:
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 24);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 3:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v6 = (v0 + v3[6]);
  if (v6[1])
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v0 + v3[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v0 + v3[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(v0);
  closure #6 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(v0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SuplConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SuplConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SuplConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SuplConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      if (result <= 7)
      {
        if (result == 6)
        {
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 40);
        }

        else
        {
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 44);
        }

LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else
      {
        switch(result)
        {
          case 8:
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 48);
            goto LABEL_3;
          case 9:
            v12 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 52);
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 10:
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 56);
            goto LABEL_3;
        }
      }
    }

    else
    {
      if (result > 2)
      {
        if (result == 3)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 28);
        }

        else if (result == 4)
        {
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 32);
        }

        else
        {
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 36);
        }

        goto LABEL_3;
      }

      if (result == 1)
      {
        v8 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v6 = *(type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0) + 24);
        goto LABEL_3;
      }
    }
  }
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = (v5 + v10[6]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v13 = (v5 + v10[7]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, MEMORY[0x277D21848]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_LteCellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[14];
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LteCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LteCellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LteCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 36));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 5, a3, a4);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GsmCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GsmCellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GsmCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          v4 = v0;
          if (result == 5)
          {
            v3 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 36);
          }

          else
          {
            v6 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 40);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          v11 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 44);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 8)
        {
          v4 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 48);
          goto LABEL_5;
        }
      }

      else
      {
        if (result > 2)
        {
          v4 = v0;
          if (result == 3)
          {
            v10 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 28);
          }

          else
          {
            v7 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 32);
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 20);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2)
        {
          v4 = v0;
          v5 = *(type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0) + 24);
LABEL_5:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v11 = (v5 + v10[6]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v13 = (v5 + v10[7]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
  closure #7 in Proto_Gnss_Emergency_WcdmaCellInfo.traverse<A>(visitor:)(v5);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in Proto_Gnss_Emergency_WcdmaCellInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  if (*(a1 + *(result + 44)) != 4)
  {
    v3 = *(a1 + *(result + 44));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WcdmaCellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  *(a2 + a1[11]) = 4;
  v14 = a2 + v13;
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WcdmaCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WcdmaCellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WcdmaCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LocationId.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 32);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
LABEL_16:
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      v4 = v0;
      type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_5;
      }

      v4 = v0;
      type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
    }

    v0 = v4;
    goto LABEL_16;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocationId.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v3 = result;
  if (*(v0 + *(result + 32)) != 7)
  {
    v5 = *(v0 + *(result + 32));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v0[1] + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v0[2] + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v4 = v0 + *(v3 + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_LocationId@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  a2[2] = v4;
  v5 = a2 + *(a1 + 28);
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 32)) = 7;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LocationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationId and conformance Proto_Gnss_Emergency_LocationId, type metadata accessor for Proto_Gnss_Emergency_LocationId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LocationId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationId and conformance Proto_Gnss_Emergency_LocationId, type metadata accessor for Proto_Gnss_Emergency_LocationId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LocationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationId and conformance Proto_Gnss_Emergency_LocationId, type metadata accessor for Proto_Gnss_Emergency_LocationId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0) + 20);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0) + 24);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementRequest.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  v3 = result;
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *v4;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WlanMeasurementRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WlanMeasurementRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementRequest and conformance Proto_Gnss_Emergency_WlanMeasurementRequest, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WlanMeasurementRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementRequest and conformance Proto_Gnss_Emergency_WlanMeasurementRequest, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WlanMeasurementRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementRequest and conformance Proto_Gnss_Emergency_WlanMeasurementRequest, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v7 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 20);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 24);
        goto LABEL_14;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v6 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 28);
LABEL_14:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 4:
          v1 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 32);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          v4 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0) + 36);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }
    }
  }
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  v12 = *(v11 + 8);
  if (v12 >> 60 != 15)
  {
    v13 = *v11;
    outlined copy of Data._Representation(*v11, *(v11 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    result = outlined consume of Data?(v13, v12);
  }

  if (!v4)
  {
    if (*(v5 + v10[6]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v5 + v10[7]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v14 = (v5 + v10[8]);
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, MEMORY[0x277D21848]);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WlanMeasurementElement@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_23D1B1460;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[9];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WlanMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WlanMeasurementElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WlanMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0) + 24);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v3 = result;
  if (*(v0 + *(result + 24)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v5 = *(v0 + *(result + 24));
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  v4 = v0 + *(v3 + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WlanMeasurementList@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 24)) = 6;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WlanMeasurementList(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementList and conformance Proto_Gnss_Emergency_WlanMeasurementList, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WlanMeasurementList(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementList and conformance Proto_Gnss_Emergency_WlanMeasurementList, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WlanMeasurementList(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementList and conformance Proto_Gnss_Emergency_WlanMeasurementList, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v12 = *(a4(0) + 20);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v10 = *(a4(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v6 = *(a4(0) + 28);
          goto LABEL_3;
        case 4:
          v11 = *(a4(0) + 32);
LABEL_3:
          v4 = 0;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          v9 = *(a4(0) + 36);
          goto LABEL_3;
      }
    }
  }
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = v5;
  result = a4(0);
  v13 = result;
  if (*(v8 + *(result + 20)) == 2)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v6)
    {
      return result;
    }
  }

  v14 = (v8 + v13[6]);
  if ((v14[1] & 1) == 0)
  {
    v15 = *v14;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v16 = (v8 + v13[7]);
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v18 = (v8 + v13[8]);
  if ((v18[1] & 1) == 0)
  {
    v19 = *v18;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v8, a1, a2, a3, a5, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GsmCellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_QoP(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_QoP(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_QoP(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SLPAddress.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          v3 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 32);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        v5 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 24);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0) + 28);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SLPAddress.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v3 = result;
  if (*(v0 + *(result + 24)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + v3[7]) != 5)
  {
    v7 = *(v0 + v3[7]);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v4 = (v0 + v3[8]);
  if (v4[1])
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(*v0 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  v6 = v0 + v3[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SLPAddress@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v6) = 5;
  v7 = (a2 + a1[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SLPAddress(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SLPAddress(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SLPAddress(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Notification.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Proto_Gnss_Emergency_Notification(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for Proto_Gnss_Emergency_Notification(0) + 24);
LABEL_3:
      v0 = 0;
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }
}

uint64_t Proto_Gnss_Emergency_Notification.traverse<A>(visitor:)()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + *(v3 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Notification@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 2;
  *(a2 + v5) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Notification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Notification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Notification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 20);
        type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 24);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_SuplInitVer2Extension.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
    if (*(v3 + *(inited + 24)) != 4)
    {
      v7 = *(v3 + *(inited + 24));
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_SuplInitVer2Extension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(inited + 20), v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SuplInitVer2Extension@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + *(a1 + 24)) = 4;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SuplInitVer2Extension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SuplInitVer2Extension(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SuplInitVer2Extension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  *(v1 + 16) = 18;
  v17 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  v18 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  v20 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  v22 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  (*(*(inited - 8) + 56))(v1 + v23, 1, 1, inited);
  swift_beginAccess();
  v25 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v25;
  v26 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v16, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v16, v1 + v17, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v12, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v1 + v19, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  v29 = v33;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v33, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v29, v1 + v21, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  v31 = v34;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v34, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v31, v1 + v23, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_Init._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_Init.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 2)
        {
          v13 = v1;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_QoP(0);
          v14 = type metadata accessor for Proto_Gnss_Emergency_QoP;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP;
          goto LABEL_7;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress;
            goto LABEL_7;
          case 4:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_Notification(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_Notification;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification;
LABEL_7:
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v14);
            v1 = v13;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
            swift_endAccess();
            break;
          case 5:
            v13 = v1;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
            v14 = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 18)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #3 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_QoP);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_QoP);
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Notification);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Notification);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v10 = *(inited - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](inited);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v8, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  if ((*(v10 + 48))(v8, 1, inited) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
}

BOOL closure #1 in static Proto_Gnss_Emergency_Init.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v105 = *(inited - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](inited);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMR);
  v8 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v10 = &v98 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v102 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = &v98 - v15;
  v109 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v108 = *(v109 - 8);
  v16 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v103 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMR);
  v18 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v110 = &v98 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v117 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v119 = &v98 - v24;
  v115 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v114 = *(v115 - 8);
  v25 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v106 = (&v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMR);
  v27 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v116 = &v98 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v111 = (&v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v121 = &v98 - v33;
  v122 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v34 = *(v122 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v122);
  v112 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v98 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v120 = &v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v98 - v45;
  swift_beginAccess();
  v47 = *(a1 + 16);
  swift_beginAccess();
  v48 = *(a2 + 16);
  if (v47 == 18)
  {
    if (v48 != 18)
    {
      return 0;
    }

LABEL_6:
    v99 = v7;
    v100 = inited;
    v101 = v10;
    v50 = a2;
    v51 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v51, v46, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    v52 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    v53 = *(v37 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v40, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v52, &v40[v53], &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    v54 = *(v34 + 48);
    v55 = v122;
    if (v54(v40, 1, v122) == 1)
    {

      outlined destroy of Any?(v46, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
      if (v54(&v40[v53], 1, v55) == 1)
      {
        outlined destroy of Any?(v40, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
LABEL_13:
        v61 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
        swift_beginAccess();
        v62 = v121;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v61, v121, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
        v63 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
        swift_beginAccess();
        v64 = *(v113 + 48);
        v40 = v116;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v62, v116, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v63, &v40[v64], &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
        v65 = *(v114 + 48);
        v66 = v115;
        if (v65(v40, 1, v115) == 1)
        {
          outlined destroy of Any?(v62, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
          v67 = v65(&v40[v64], 1, v66);
          v68 = v118;
          v69 = v117;
          v70 = v119;
          if (v67 == 1)
          {
            outlined destroy of Any?(v40, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
LABEL_25:
            v77 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v77, v70, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            v78 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
            swift_beginAccess();
            v79 = *(v107 + 48);
            v80 = v70;
            v81 = v70;
            v82 = v110;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80, v110, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v78, v82 + v79, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            v83 = *(v108 + 48);
            v84 = v109;
            if (v83(v82, 1, v109) == 1)
            {
              outlined destroy of Any?(v81, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
              if (v83(v82 + v79, 1, v84) == 1)
              {
                outlined destroy of Any?(v82, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
LABEL_32:
                v88 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
                swift_beginAccess();
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v88, v68, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                v89 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
                swift_beginAccess();
                v90 = *(v104 + 48);
                v91 = v101;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68, v101, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50 + v89, v91 + v90, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                v92 = *(v105 + 48);
                v93 = v100;
                if (v92(v91, 1, v100) == 1)
                {

                  outlined destroy of Any?(v68, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                  if (v92(v91 + v90, 1, v93) == 1)
                  {
                    outlined destroy of Any?(v91, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                    return 1;
                  }

                  goto LABEL_37;
                }

                v94 = v102;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v91, v102, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                if (v92(v91 + v90, 1, v93) == 1)
                {

                  outlined destroy of Any?(v68, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v94, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
LABEL_37:
                  outlined destroy of Any?(v91, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMR);
                  return 0;
                }

                v95 = v91 + v90;
                v96 = v99;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v95, v99, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                v97 = specialized static Proto_Gnss_Emergency_SuplInitVer2Extension.== infix(_:_:)(v94, v96);

                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v96, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                outlined destroy of Any?(v68, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v94, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                outlined destroy of Any?(v91, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                return (v97 & 1) != 0;
              }

              goto LABEL_30;
            }

            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v82, v69, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            if (v83(v82 + v79, 1, v84) == 1)
            {
              outlined destroy of Any?(v119, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v69, type metadata accessor for Proto_Gnss_Emergency_Notification);
LABEL_30:
              v57 = &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMd;
              v58 = &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMR;
              v74 = v82;
              goto LABEL_20;
            }

            v85 = v82 + v79;
            v86 = v103;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v85, v103, type metadata accessor for Proto_Gnss_Emergency_Notification);
            v87 = specialized static Proto_Gnss_Emergency_Notification.== infix(_:_:)(v69, v86);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v86, type metadata accessor for Proto_Gnss_Emergency_Notification);
            outlined destroy of Any?(v119, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v69, type metadata accessor for Proto_Gnss_Emergency_Notification);
            outlined destroy of Any?(v82, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            if (v87)
            {
              goto LABEL_32;
            }

LABEL_21:

            return 0;
          }
        }

        else
        {
          v71 = v111;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, v111, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
          v72 = v65(&v40[v64], 1, v66);
          v73 = v118;
          v69 = v117;
          v70 = v119;
          if (v72 != 1)
          {
            v75 = &v40[v64];
            v76 = v106;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v75, v106, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            LODWORD(v122) = specialized static Proto_Gnss_Emergency_SLPAddress.== infix(_:_:)(v71, v76);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v76, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            outlined destroy of Any?(v121, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v71, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            outlined destroy of Any?(v40, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
            v68 = v73;
            if ((v122 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }

          outlined destroy of Any?(v121, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v71, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
        }

        v57 = &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMd;
        v58 = &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMR;
LABEL_19:
        v74 = v40;
LABEL_20:
        outlined destroy of Any?(v74, v57, v58);
        goto LABEL_21;
      }
    }

    else
    {
      v56 = v120;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, v120, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
      if (v54(&v40[v53], 1, v55) != 1)
      {
        v59 = v112;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v40[v53], v112, type metadata accessor for Proto_Gnss_Emergency_QoP);

        v60 = specialized static Proto_Gnss_Emergency_GsmCellInfo.== infix(_:_:)(v56, v59, type metadata accessor for Proto_Gnss_Emergency_QoP);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v59, type metadata accessor for Proto_Gnss_Emergency_QoP);
        outlined destroy of Any?(v46, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_QoP);
        outlined destroy of Any?(v40, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
        if ((v60 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      outlined destroy of Any?(v46, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v56, type metadata accessor for Proto_Gnss_Emergency_QoP);
    }

    v57 = &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMd;
    v58 = &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMR;
    goto LABEL_19;
  }

  result = 0;
  if (v48 != 18 && v47 == v48)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Init(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Init and conformance Proto_Gnss_Emergency_Init, type metadata accessor for Proto_Gnss_Emergency_Init);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Init(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Init and conformance Proto_Gnss_Emergency_Init, type metadata accessor for Proto_Gnss_Emergency_Init);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Init(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Init and conformance Proto_Gnss_Emergency_Init, type metadata accessor for Proto_Gnss_Emergency_Init);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SuplContext.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_6;
          }

          v6 = v0;
          v8 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 32);
          goto LABEL_22;
        }

        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v6 = v0;
          v7 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 24);
          goto LABEL_22;
        }

        v10 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 20);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v6 = v0;
          v9 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40);
LABEL_22:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_6;
        }

        v12 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 36);
        type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v3 = v0;
            v11 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 44);
            goto LABEL_5;
          case 8:
            v3 = v0;
            v13 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 48);
            goto LABEL_5;
          case 9:
            v3 = v0;
            v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 52);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if (v13[1])
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  v15 = (v5 + v10[8]);
  if (v15[1])
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5);
  closure #7 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  closure #8 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5);
  closure #9 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v14 + 36), v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
}

uint64_t closure #6 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SuplContext@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  v8 = (a2 + v7);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  result = (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v12 = a1[11];
  v13 = (a2 + a1[10]);
  *v13 = 0;
  v13[1] = 0;
  *(a2 + v12) = 2;
  v14 = a1[13];
  *(a2 + a1[12]) = 2;
  *(a2 + v14) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SuplContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplContext and conformance Proto_Gnss_Emergency_SuplContext, type metadata accessor for Proto_Gnss_Emergency_SuplContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SuplContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplContext and conformance Proto_Gnss_Emergency_SuplContext, type metadata accessor for Proto_Gnss_Emergency_SuplContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SuplContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplContext and conformance Proto_Gnss_Emergency_SuplContext, type metadata accessor for Proto_Gnss_Emergency_SuplContext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v35 - v8;
  *(v1 + 16) = 0;
  *(v1 + 21) = 8466;
  *(v1 + 23) = 24;
  *(v1 + 24) = 0;
  *(v1 + 20) = 1;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  v36 = (v1 + 56);
  *(v1 + 72) = 0;
  v37 = (v1 + 72);
  *(v1 + 64) = 1;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  v38 = (v1 + 88);
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  v39 = (v1 + 104);
  *(v1 + 120) = 0;
  v40 = (v1 + 120);
  *(v1 + 112) = 1;
  *(v1 + 128) = 1;
  *(v1 + 129) = 514;
  v41 = (v1 + 129);
  *(v1 + 131) = 2;
  v9 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v42 = (v1 + 131);
  v43 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v44 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  LODWORD(v11) = *(a1 + 16);
  v13 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 20) = v13;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 22);
  swift_beginAccess();
  *(v1 + 22) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 23);
  swift_beginAccess();
  *(v1 + 23) = v11;
  swift_beginAccess();
  v14 = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v14;
  *(v1 + 32) = v11;
  swift_beginAccess();
  v15 = *(a1 + 40);
  LOBYTE(v14) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v15;
  *(v1 + 48) = v14;
  swift_beginAccess();
  v16 = *(a1 + 56);
  LOBYTE(v14) = *(a1 + 64);
  v17 = v36;
  swift_beginAccess();
  *v17 = v16;
  *(v1 + 64) = v14;
  swift_beginAccess();
  v18 = *(a1 + 72);
  LOBYTE(v14) = *(a1 + 80);
  v19 = v37;
  swift_beginAccess();
  *v19 = v18;
  *(v1 + 80) = v14;
  swift_beginAccess();
  v20 = *(a1 + 88);
  LOBYTE(v14) = *(a1 + 96);
  v21 = v38;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 96) = v14;
  swift_beginAccess();
  v22 = *(a1 + 104);
  LOBYTE(v14) = *(a1 + 112);
  v23 = v39;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 112) = v14;
  swift_beginAccess();
  v24 = *(a1 + 120);
  LOBYTE(v14) = *(a1 + 128);
  v25 = v40;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 128) = v14;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 129);
  v26 = v41;
  swift_beginAccess();
  *v26 = v24;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 130);
  swift_beginAccess();
  *(v1 + 130) = v24;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 131);
  v27 = v42;
  swift_beginAccess();
  *v27 = v24;
  v28 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  v29 = v45;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v45, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v30 = v43;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v29, v1 + v30, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  v32 = v46;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v31, v46, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);

  v33 = v44;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v32, v1 + v33, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_SessionStatus.decodeMessage<A>(decoder:)()
{
  v2 = v0;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 2:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
          goto LABEL_14;
        case 3:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status();
          goto LABEL_14;
        case 4:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause();
LABEL_14:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 12:
        case 13:
        case 14:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 15:
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation;
          v14 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation;
          goto LABEL_11;
        case 16:
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime;
          v14 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime;
LABEL_11:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v14, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_17:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(v9 + 21) != 18)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 22) != 33)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(v9 + 23) != 24)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    v12 = *(v9 + 24);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 48) & 1) == 0)
  {
    v13 = *(v9 + 40);
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9);
  closure #8 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9);
  closure #9 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9);
  closure #10 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9);
  closure #11 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9);
  closure #12 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9);
  closure #13 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9);
  closure #14 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9);
  closure #15 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #16 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}