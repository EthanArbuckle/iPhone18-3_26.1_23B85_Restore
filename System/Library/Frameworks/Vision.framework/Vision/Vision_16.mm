uint64_t sub_1A5C74F04()
{
  sub_1A5FD4C1C();
  RequestDescriptor.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C74F54()
{
  sub_1A5FD4C1C();
  RequestDescriptor.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C74F9C()
{
  result = 0;
  HIDWORD(v2) = v0[1];
  LODWORD(v2) = *v0 << 24;
  switch((v2 >> 27))
  {
    case 0u:
      result = sub_1A5BF8A64();
      break;
    case 1u:
      result = sub_1A5BFB174();
      break;
    case 2u:
      result = sub_1A5C5385C();
      break;
    case 3u:
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x15u:
    case 0x18u:
    case 0x1Cu:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x3Cu:
    case 0x3Eu:
    case 0x42u:
    case 0x44u:
      result = sub_1A5B132D8();
      break;
    case 6u:
      result = sub_1A5C92AD0();
      break;
    case 9u:
    case 0xAu:
    case 0x1Bu:
    case 0x2Eu:
      result = sub_1A5B93FB0();
      break;
    case 0xCu:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
      result = sub_1A5B48324();
      break;
    case 0x13u:
    case 0x16u:
    case 0x1Du:
      result = sub_1A5B8E1C8();
      break;
    case 0x14u:
      result = sub_1A5C16D20();
      break;
    case 0x17u:
      result = sub_1A5BF0B14();
      break;
    case 0x19u:
      result = sub_1A5C88884();
      break;
    case 0x24u:
      result = sub_1A5BA4088();
      break;
    case 0x27u:
      result = sub_1A5B0E010();
      break;
    case 0x2Bu:
    case 0x43u:
    case 0x46u:
      result = sub_1A5B3DE48();
      break;
    case 0x2Cu:
      result = sub_1A5B22800();
      break;
    case 0x2Du:
      result = sub_1A5B38A5C();
      break;
    case 0x33u:
      result = sub_1A5BC7838();
      break;
    case 0x34u:
      result = sub_1A5CD0834();
      break;
    case 0x3Du:
      result = sub_1A5BB0E30();
      break;
    case 0x3Fu:
      result = sub_1A5C2AFA4();
      break;
    case 0x40u:
    case 0x41u:
      result = sub_1A5BBC2C0();
      break;
    case 0x45u:
      result = sub_1A5BBA81C();
      break;
    case 0x47u:
      result = sub_1A5C04C4C();
      break;
    default:
      return result;
  }

  return result;
}

id sub_1A5C752E0()
{
  v0 = sub_1A5C66384();
  v2 = sub_1A5BC8774(v0, v1);
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1A5C74F9C();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  sub_1A5B1011C();
  return sub_1A5C75394(v2, v4, v7);
}

id sub_1A5C75394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A5FD3D2C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() specifierForRequestClassName:v4 revision:a3 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1A5C7547C@<X0>(__int16 *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 requestClassName];
  v6 = sub_1A5FD3D5C();
  v7 = v5;
  v8 = v6 == 0xD00000000000001DLL && 0x80000001A6057DC0 == v5;
  if (v8 || (sub_1A5FD4B0C() & 1) != 0)
  {

    result = sub_1A5BF8A7C([v2 requestRevision], &v14);
    v10 = v14;
    if (v14 != 6)
    {
LABEL_8:
      *a1 = v10;
      return result;
    }

LABEL_7:
    v10 = -8;
    goto LABEL_8;
  }

  v11 = v6 == 0xD000000000000021 && 0x80000001A6057DE0 == v7;
  if (v11 || (sub_1A5FD4B0C() & 1) != 0)
  {

    result = sub_1A5B93FBC([v2 requestRevision], &v14);
    if ((v14 & 1) == 0)
    {
      v10 = 72;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001CLL && 0x80000001A6057E10 == v7 || (sub_1A5FD4B0C() & 1) != 0)
  {

    result = sub_1A5B93FBC([v2 requestRevision], &v14);
    if ((v14 & 1) == 0)
    {
      v10 = 80;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 == 0xD000000000000017 && 0x80000001A6057E30 == v7 || (sub_1A5FD4B0C() & 1) != 0)
  {

    result = sub_1A5B2A4FC([v2 requestRevision], &v14);
    if ((v14 & 1) == 0)
    {
      v10 = 400;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 == 0xD000000000000017 && 0x80000001A6057E50 == v7 || (sub_1A5FD4B0C() & 1) != 0)
  {

    result = sub_1A5B2A4FC([v2 requestRevision], &v14);
    if ((v14 & 1) == 0)
    {
      v10 = 392;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001FLL && 0x80000001A6057E70 == v7 || (sub_1A5FD4B0C() & 1) != 0)
  {

    result = sub_1A5B0E028([v2 requestRevision], &v14);
    if (v14 != 3)
    {
      v10 = v14 | 0x138;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 == 0xD00000000000001ELL && 0x80000001A6057E90 == v7)
  {

    goto LABEL_41;
  }

  v12 = sub_1A5FD4B0C();

  if (v12)
  {

LABEL_41:
    result = sub_1A5B2A4FC([v2 requestRevision], &v14);
    if ((v14 & 1) == 0)
    {
      v10 = 384;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1A5FD46AC();
  v13 = [v2 requestClassName];
  sub_1A5FD3D5C();

  MEMORY[0x1AC554600](0xD00000000000002ELL, 0x80000001A6057ED0);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5C758A4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A5FD3DEC();

    return sub_1A5FD3E6C();
  }

  return result;
}

unint64_t sub_1A5C75940()
{
  result = qword_1EB1EE638;
  if (!qword_1EB1EE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE638);
  }

  return result;
}

unint64_t sub_1A5C75994(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1A5FD3DEC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1A5FD3E6C();
}

unint64_t sub_1A5C75A44()
{
  result = qword_1EB1EE640;
  if (!qword_1EB1EE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE640);
  }

  return result;
}

uint64_t _s6Vision17RequestDescriptorO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  HIDWORD(v5) = a1[1];
  LODWORD(v5) = v2 << 24;
  v4 = v5 >> 27;
  HIDWORD(v5) = a2[1];
  LODWORD(v5) = v3 << 24;
  v6 = v5 >> 27;
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        return 0;
      }

      v10 = v2 & 7;
      v9 = v3 & 7;
      return static DetectHumanRectanglesRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 2:
      if (v6 != 2)
      {
        return 0;
      }

      v10 = v2 & 7;
      v9 = v3 & 7;
      return static ClassifyImageRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 3:
      if (v6 != 3)
      {
        return 0;
      }

      return static CalculateImageAestheticsScoresRequest.Revision.== infix(_:_:)();
    case 4:
      if (v6 != 4)
      {
        return 0;
      }

      return static CoreMLRequest.Revision.== infix(_:_:)();
    case 5:
      if (v6 != 5)
      {
        return 0;
      }

      return static DetectAnimalBodyPoseRequest.Revision.== infix(_:_:)();
    case 6:
      if (v6 != 6)
      {
        return 0;
      }

      return static DetectBarcodesRequest.Revision.== infix(_:_:)();
    case 7:
      if (v6 != 7)
      {
        return 0;
      }

      return static DetectContoursRequest.Revision.== infix(_:_:)();
    case 8:
      if (v6 != 8)
      {
        return 0;
      }

      return static DetectDocumentSegmentationRequest.Revision.== infix(_:_:)();
    case 9:
      if (v6 != 9)
      {
        return 0;
      }

      return static DetectFaceCaptureQualityRequest.Revision.== infix(_:_:)();
    case 10:
      if (v6 != 10)
      {
        return 0;
      }

      return static DetectFaceLandmarksRequest.Revision.== infix(_:_:)();
    case 11:
      if (v6 != 11)
      {
        return 0;
      }

      return static DetectHorizonRequest.Revision.== infix(_:_:)();
    case 12:
      if (v6 != 12)
      {
        return 0;
      }

      return static DetectHumanBodyPoseRequest.Revision.== infix(_:_:)();
    case 13:
      if (v6 != 13)
      {
        return 0;
      }

      return static DetectHumanBodyPose3DRequest.Revision.== infix(_:_:)();
    case 14:
      if (v6 != 14)
      {
        return 0;
      }

      return static DetectHumanHandPoseRequest.Revision.== infix(_:_:)();
    case 15:
      if (v6 != 15)
      {
        return 0;
      }

      return static DetectRectanglesRequest.Revision.== infix(_:_:)();
    case 16:
      if (v6 != 16)
      {
        return 0;
      }

      return static DetectTextRectanglesRequest.Revision.== infix(_:_:)();
    case 17:
      if (v6 != 17)
      {
        return 0;
      }

      return static DetectTrajectoriesRequest.Revision.== infix(_:_:)();
    case 18:
      if (v6 != 18)
      {
        return 0;
      }

      return static DetectLensSmudgeRequest.Revision.== infix(_:_:)();
    case 19:
      if (v6 != 19)
      {
        return 0;
      }

      return static GenerateAttentionBasedSaliencyImageRequest.Revision.== infix(_:_:)();
    case 20:
      if (v6 != 20)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static GenerateImageFeaturePrintRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 21:
      if (v6 != 21)
      {
        return 0;
      }

      return static GenerateForegroundInstanceMaskRequest.Revision.== infix(_:_:)();
    case 22:
      if (v6 != 22)
      {
        return 0;
      }

      return static GenerateObjectnessBasedSaliencyImageRequest.Revision.== infix(_:_:)();
    case 23:
      if (v6 != 23)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static GeneratePersonSegmentationRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 24:
      if (v6 != 24)
      {
        return 0;
      }

      return static GeneratePersonInstanceMaskRequest.Revision.== infix(_:_:)();
    case 25:
      if (v6 != 25)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static RecognizeAnimalsRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 26:
      if (v6 != 26)
      {
        return 0;
      }

      return static RecognizeDocumentsRequest.Revision.== infix(_:_:)();
    case 27:
      if (v6 != 27)
      {
        return 0;
      }

      return static RecognizeTextRequest.Revision.== infix(_:_:)();
    case 28:
      if (v6 != 28)
      {
        return 0;
      }

      return static TrackHomographicImageRegistrationRequest.Revision.== infix(_:_:)();
    case 29:
      if (v6 != 29)
      {
        return 0;
      }

      return static TrackObjectRequest.Revision.== infix(_:_:)();
    case 30:
      if (v6 != 30)
      {
        return 0;
      }

      return static TrackOpticalFlowRequest.Revision.== infix(_:_:)();
    case 31:
      if (v6 != 31)
      {
        return 0;
      }

      return static TrackRectangleRequest.Revision.== infix(_:_:)();
    case 32:
      if (v6 != 32)
      {
        return 0;
      }

      return static TrackTranslationalImageRegistrationRequest.Revision.== infix(_:_:)();
    case 33:
      if (v6 != 33)
      {
        return 0;
      }

      return static DetectScreenGazeRequest.Revision.== infix(_:_:)();
    case 34:
      if (v6 != 34)
      {
        return 0;
      }

      return static DetectDeviceGazeRequest.Revision.== infix(_:_:)();
    case 35:
      if (v6 != 35)
      {
        return 0;
      }

      return static DetectCameraGazeRequest.Revision.== infix(_:_:)();
    case 36:
      if (v6 != 36)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static GenerateFacePrintRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 37:
      if (v6 != 37)
      {
        return 0;
      }

      return static GenerateTorsoPrintRequest.Revision.== infix(_:_:)();
    case 38:
      if (v6 != 38)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static CalculateFaceLivelinessScoreRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 39:
      if (v6 != 39)
      {
        return 0;
      }

      v10 = v2 & 7;
      v9 = v3 & 7;
      return static ClassifyFaceAttributesRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 40:
      if (v6 != 40)
      {
        return 0;
      }

      return static AlignFaceRectanglesRequest.Revision.== infix(_:_:)();
    case 41:
      if (v6 != 41)
      {
        return 0;
      }

      return static CalculateBlurScoreRequest.Revision.== infix(_:_:)();
    case 42:
      if (v6 != 42)
      {
        return 0;
      }

      return static CalculateExposureScoreRequest.Revision.== infix(_:_:)();
    case 43:
      if (v6 != 43)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static ClassifyCityNatureImageRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 44:
      if (v6 != 44)
      {
        return 0;
      }

      v10 = v2 & 7;
      v9 = v3 & 7;
      return static ClassifyImageAestheticsRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 45:
      if (v6 != 45)
      {
        return 0;
      }

      v10 = v2 & 7;
      v9 = v3 & 7;
      return static ClassifyJunkImageRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 46:
      if (v6 != 46)
      {
        return 0;
      }

      return static ClassifyMemeImageRequest.Revision.== infix(_:_:)();
    case 47:
      if (v6 != 47)
      {
        return 0;
      }

      return static ClassifyPotentialLandmarkRequest.Revision.== infix(_:_:)();
    case 48:
      if (v6 != 48)
      {
        return 0;
      }

      return static DetectFaceExpressionsRequest.Revision.== infix(_:_:)();
    case 49:
      if (v6 != 49)
      {
        return 0;
      }

      return static DetectFaceGazeRequest.Revision.== infix(_:_:)();
    case 50:
      if (v6 != 50)
      {
        return 0;
      }

      return static DetectFacePoseRequest.Revision.== infix(_:_:)();
    case 51:
      if (v6 != 51)
      {
        return 0;
      }

      v10 = v2 & 7;
      v9 = v3 & 7;
      return static DetectHumanHeadRectanglesRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 52:
      if (v6 != 52)
      {
        return 0;
      }

      return static GenerateAnimalPrintRequest.Revision.== infix(_:_:)();
    case 53:
      if (v6 != 53)
      {
        return 0;
      }

      return static GenerateAnimalSegmentationRequest.Revision.== infix(_:_:)();
    case 54:
      if (v6 != 54)
      {
        return 0;
      }

      return static GenerateFaceSegmentsRequest.Revision.== infix(_:_:)();
    case 55:
      if (v6 != 55)
      {
        return 0;
      }

      return static GenerateImageFingerprintsRequest.Revision.== infix(_:_:)();
    case 56:
      if (v6 != 56)
      {
        return 0;
      }

      return static GenerateImagePrintRequest.Revision.== infix(_:_:)();
    case 57:
      if (v6 != 57)
      {
        return 0;
      }

      return static GenerateGlassesSegmentationRequest.Revision.== infix(_:_:)();
    case 58:
      if (v6 != 58)
      {
        return 0;
      }

      return static GenerateHumanAttributesSegmentationRequest.Revision.== infix(_:_:)();
    case 59:
      if (v6 != 59)
      {
        return 0;
      }

      return static GenerateSkySegmentationRequest.Revision.== infix(_:_:)();
    case 60:
      if (v6 != 60)
      {
        return 0;
      }

      return static RecognizeAnimalFacesRequest.Revision.== infix(_:_:)();
    case 61:
      if (v6 != 61)
      {
        return 0;
      }

      return static RecognizeFoodAndDrinkRequest.Revision.== infix(_:_:)();
    case 62:
      if (v6 != 62)
      {
        return 0;
      }

      return static RecognizeDocumentElementsRequest.Revision.== infix(_:_:)();
    case 63:
      if (v6 != 63)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static RecognizeObjectsRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 64:
      if (v6 != 64)
      {
        return 0;
      }

      return static RecognizePosteriorAnimalHeadsRequest.Revision.== infix(_:_:)();
    case 65:
      if (v6 != 65)
      {
        return 0;
      }

      return static RecognizeSportBallsRequest.Revision.== infix(_:_:)();
    case 66:
      if (v6 != 66)
      {
        return 0;
      }

      return static TrackMaskRequest.Revision.== infix(_:_:)();
    case 67:
      if (v6 != 67)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static GenerateDetectionPrintRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 68:
      if (v6 != 68)
      {
        return 0;
      }

      return static SVYvzEtX1JlUdu8xx5qhDIRequest.Revision.== infix(_:_:)();
    case 69:
      if (v6 != 69)
      {
        return 0;
      }

      v10 = v2 & 7;
      v9 = v3 & 7;
      return static S5kJNH3eYuyaLxNpZr5Z7ziRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 70:
      if (v6 != 70)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static S6Mb1ME89lyW3HpahkEygIGRequest.Revision.== infix(_:_:)(&v10, &v9);
    case 71:
      if (v6 != 71)
      {
        return 0;
      }

      v10 = v2 & 1;
      v9 = v3 & 1;
      return static S1JC7R3k4455fKQz0dY1VhQRequest.Revision.== infix(_:_:)(&v10, &v9);
    default:
      if (v6)
      {
        return 0;
      }

      else
      {
        v10 = *a1;
        v9 = v3;
        return static DetectFaceRectanglesRequest.Revision.== infix(_:_:)(&v10, &v9);
      }
  }
}

unint64_t sub_1A5C7667C()
{
  result = qword_1EB2495C0;
  if (!qword_1EB2495C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495C0);
  }

  return result;
}

unint64_t sub_1A5C766D0()
{
  result = qword_1EB2495C8;
  if (!qword_1EB2495C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495C8);
  }

  return result;
}

unint64_t sub_1A5C76724()
{
  result = qword_1EB1F34E8;
  if (!qword_1EB1F34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F34E8);
  }

  return result;
}

unint64_t sub_1A5C76778()
{
  result = qword_1EB2495D0;
  if (!qword_1EB2495D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495D0);
  }

  return result;
}

unint64_t sub_1A5C767CC()
{
  result = qword_1EB1F34F0;
  if (!qword_1EB1F34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F34F0);
  }

  return result;
}

unint64_t sub_1A5C76820()
{
  result = qword_1EB2495D8;
  if (!qword_1EB2495D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495D8);
  }

  return result;
}

unint64_t sub_1A5C76874()
{
  result = qword_1EB1F34F8;
  if (!qword_1EB1F34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F34F8);
  }

  return result;
}

unint64_t sub_1A5C768C8()
{
  result = qword_1EB2495E0;
  if (!qword_1EB2495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495E0);
  }

  return result;
}

unint64_t sub_1A5C7691C()
{
  result = qword_1EB1F3500;
  if (!qword_1EB1F3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3500);
  }

  return result;
}

unint64_t sub_1A5C76970()
{
  result = qword_1EB2495E8;
  if (!qword_1EB2495E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495E8);
  }

  return result;
}

unint64_t sub_1A5C769C4()
{
  result = qword_1EB1F3508;
  if (!qword_1EB1F3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3508);
  }

  return result;
}

unint64_t sub_1A5C76A18()
{
  result = qword_1EB2495F0;
  if (!qword_1EB2495F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495F0);
  }

  return result;
}

unint64_t sub_1A5C76A6C()
{
  result = qword_1EB1F3510;
  if (!qword_1EB1F3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3510);
  }

  return result;
}

unint64_t sub_1A5C76AC0()
{
  result = qword_1EB2495F8;
  if (!qword_1EB2495F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2495F8);
  }

  return result;
}

unint64_t sub_1A5C76B14()
{
  result = qword_1EB1F3518;
  if (!qword_1EB1F3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3518);
  }

  return result;
}

unint64_t sub_1A5C76B68()
{
  result = qword_1EB249600;
  if (!qword_1EB249600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249600);
  }

  return result;
}

unint64_t sub_1A5C76BBC()
{
  result = qword_1EB1F3520;
  if (!qword_1EB1F3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3520);
  }

  return result;
}

unint64_t sub_1A5C76C10()
{
  result = qword_1EB249608;
  if (!qword_1EB249608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249608);
  }

  return result;
}

unint64_t sub_1A5C76C64()
{
  result = qword_1EB1F3528;
  if (!qword_1EB1F3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3528);
  }

  return result;
}

unint64_t sub_1A5C76CB8()
{
  result = qword_1EB249610;
  if (!qword_1EB249610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249610);
  }

  return result;
}

unint64_t sub_1A5C76D0C()
{
  result = qword_1EB1F3530;
  if (!qword_1EB1F3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3530);
  }

  return result;
}

unint64_t sub_1A5C76D60()
{
  result = qword_1EB249618;
  if (!qword_1EB249618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249618);
  }

  return result;
}

unint64_t sub_1A5C76DB4()
{
  result = qword_1EB1F3538;
  if (!qword_1EB1F3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3538);
  }

  return result;
}

unint64_t sub_1A5C76E08()
{
  result = qword_1EB249620;
  if (!qword_1EB249620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249620);
  }

  return result;
}

unint64_t sub_1A5C76E5C()
{
  result = qword_1EB1F3540;
  if (!qword_1EB1F3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3540);
  }

  return result;
}

unint64_t sub_1A5C76EB0()
{
  result = qword_1EB249628;
  if (!qword_1EB249628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249628);
  }

  return result;
}

unint64_t sub_1A5C76F04()
{
  result = qword_1EB1F3548;
  if (!qword_1EB1F3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3548);
  }

  return result;
}

unint64_t sub_1A5C76F58()
{
  result = qword_1EB249630;
  if (!qword_1EB249630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249630);
  }

  return result;
}

unint64_t sub_1A5C76FAC()
{
  result = qword_1EB1F3550;
  if (!qword_1EB1F3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3550);
  }

  return result;
}

unint64_t sub_1A5C77000()
{
  result = qword_1EB249638;
  if (!qword_1EB249638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249638);
  }

  return result;
}

unint64_t sub_1A5C77054()
{
  result = qword_1EB1F3558;
  if (!qword_1EB1F3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3558);
  }

  return result;
}

unint64_t sub_1A5C770A8()
{
  result = qword_1EB249640;
  if (!qword_1EB249640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249640);
  }

  return result;
}

unint64_t sub_1A5C770FC()
{
  result = qword_1EB1F3560;
  if (!qword_1EB1F3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3560);
  }

  return result;
}

unint64_t sub_1A5C77150()
{
  result = qword_1EB249648;
  if (!qword_1EB249648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249648);
  }

  return result;
}

unint64_t sub_1A5C771A4()
{
  result = qword_1EB1F3568;
  if (!qword_1EB1F3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3568);
  }

  return result;
}

unint64_t sub_1A5C771F8()
{
  result = qword_1EB249650;
  if (!qword_1EB249650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249650);
  }

  return result;
}

unint64_t sub_1A5C7724C()
{
  result = qword_1EB1F3570;
  if (!qword_1EB1F3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3570);
  }

  return result;
}

unint64_t sub_1A5C772A0()
{
  result = qword_1EB249658;
  if (!qword_1EB249658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249658);
  }

  return result;
}

unint64_t sub_1A5C772F4()
{
  result = qword_1EB1F3578;
  if (!qword_1EB1F3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3578);
  }

  return result;
}

unint64_t sub_1A5C77348()
{
  result = qword_1EB249660;
  if (!qword_1EB249660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249660);
  }

  return result;
}

unint64_t sub_1A5C7739C()
{
  result = qword_1EB1F3580;
  if (!qword_1EB1F3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3580);
  }

  return result;
}

unint64_t sub_1A5C773F0()
{
  result = qword_1EB249668;
  if (!qword_1EB249668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249668);
  }

  return result;
}

unint64_t sub_1A5C77444()
{
  result = qword_1EB1F3588;
  if (!qword_1EB1F3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3588);
  }

  return result;
}

unint64_t sub_1A5C77498()
{
  result = qword_1EB249670;
  if (!qword_1EB249670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249670);
  }

  return result;
}

unint64_t sub_1A5C774EC()
{
  result = qword_1EB1F3590;
  if (!qword_1EB1F3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3590);
  }

  return result;
}

unint64_t sub_1A5C77540()
{
  result = qword_1EB249678;
  if (!qword_1EB249678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249678);
  }

  return result;
}

unint64_t sub_1A5C77594()
{
  result = qword_1EB1F3598;
  if (!qword_1EB1F3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3598);
  }

  return result;
}

unint64_t sub_1A5C775E8()
{
  result = qword_1EB249680;
  if (!qword_1EB249680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249680);
  }

  return result;
}

unint64_t sub_1A5C7763C()
{
  result = qword_1EB1F35A0;
  if (!qword_1EB1F35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35A0);
  }

  return result;
}

unint64_t sub_1A5C77690()
{
  result = qword_1EB249688;
  if (!qword_1EB249688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249688);
  }

  return result;
}

unint64_t sub_1A5C776E4()
{
  result = qword_1EB1F35A8;
  if (!qword_1EB1F35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35A8);
  }

  return result;
}

unint64_t sub_1A5C77738()
{
  result = qword_1EB249690;
  if (!qword_1EB249690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249690);
  }

  return result;
}

unint64_t sub_1A5C7778C()
{
  result = qword_1EB1F35B0;
  if (!qword_1EB1F35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35B0);
  }

  return result;
}

unint64_t sub_1A5C777E0()
{
  result = qword_1EB249698;
  if (!qword_1EB249698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249698);
  }

  return result;
}

unint64_t sub_1A5C77834()
{
  result = qword_1EB1F35B8;
  if (!qword_1EB1F35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35B8);
  }

  return result;
}

unint64_t sub_1A5C77888()
{
  result = qword_1EB2496A0;
  if (!qword_1EB2496A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496A0);
  }

  return result;
}

unint64_t sub_1A5C778DC()
{
  result = qword_1EB1F35C0;
  if (!qword_1EB1F35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35C0);
  }

  return result;
}

unint64_t sub_1A5C77930()
{
  result = qword_1EB2496A8;
  if (!qword_1EB2496A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496A8);
  }

  return result;
}

unint64_t sub_1A5C77984()
{
  result = qword_1EB1F35C8;
  if (!qword_1EB1F35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35C8);
  }

  return result;
}

unint64_t sub_1A5C779D8()
{
  result = qword_1EB2496B0;
  if (!qword_1EB2496B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496B0);
  }

  return result;
}

unint64_t sub_1A5C77A2C()
{
  result = qword_1EB1F35D0;
  if (!qword_1EB1F35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35D0);
  }

  return result;
}

unint64_t sub_1A5C77A80()
{
  result = qword_1EB2496B8;
  if (!qword_1EB2496B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496B8);
  }

  return result;
}

unint64_t sub_1A5C77AD4()
{
  result = qword_1EB1F35D8;
  if (!qword_1EB1F35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35D8);
  }

  return result;
}

unint64_t sub_1A5C77B28()
{
  result = qword_1EB2496C0;
  if (!qword_1EB2496C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496C0);
  }

  return result;
}

unint64_t sub_1A5C77B7C()
{
  result = qword_1EB1F35E0;
  if (!qword_1EB1F35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35E0);
  }

  return result;
}

unint64_t sub_1A5C77BD0()
{
  result = qword_1EB2496C8;
  if (!qword_1EB2496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496C8);
  }

  return result;
}

unint64_t sub_1A5C77C24()
{
  result = qword_1EB1F35E8;
  if (!qword_1EB1F35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35E8);
  }

  return result;
}

unint64_t sub_1A5C77C78()
{
  result = qword_1EB2496D0;
  if (!qword_1EB2496D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496D0);
  }

  return result;
}

unint64_t sub_1A5C77CCC()
{
  result = qword_1EB1F35F0;
  if (!qword_1EB1F35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35F0);
  }

  return result;
}

unint64_t sub_1A5C77D20()
{
  result = qword_1EB2496D8;
  if (!qword_1EB2496D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496D8);
  }

  return result;
}

unint64_t sub_1A5C77D74()
{
  result = qword_1EB1F35F8;
  if (!qword_1EB1F35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F35F8);
  }

  return result;
}

unint64_t sub_1A5C77DC8()
{
  result = qword_1EB2496E0;
  if (!qword_1EB2496E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496E0);
  }

  return result;
}

unint64_t sub_1A5C77E1C()
{
  result = qword_1EB1F3600;
  if (!qword_1EB1F3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3600);
  }

  return result;
}

unint64_t sub_1A5C77E70()
{
  result = qword_1EB2496E8;
  if (!qword_1EB2496E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496E8);
  }

  return result;
}

unint64_t sub_1A5C77EC4()
{
  result = qword_1EB1F3608;
  if (!qword_1EB1F3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3608);
  }

  return result;
}

unint64_t sub_1A5C77F18()
{
  result = qword_1EB2496F0;
  if (!qword_1EB2496F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496F0);
  }

  return result;
}

unint64_t sub_1A5C77F6C()
{
  result = qword_1EB1F3610;
  if (!qword_1EB1F3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3610);
  }

  return result;
}

unint64_t sub_1A5C77FC0()
{
  result = qword_1EB2496F8;
  if (!qword_1EB2496F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2496F8);
  }

  return result;
}

unint64_t sub_1A5C78014()
{
  result = qword_1EB1F3618;
  if (!qword_1EB1F3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3618);
  }

  return result;
}

unint64_t sub_1A5C78068()
{
  result = qword_1EB249700;
  if (!qword_1EB249700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249700);
  }

  return result;
}

unint64_t sub_1A5C780BC()
{
  result = qword_1EB1F3620;
  if (!qword_1EB1F3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3620);
  }

  return result;
}

unint64_t sub_1A5C78110()
{
  result = qword_1EB249708;
  if (!qword_1EB249708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249708);
  }

  return result;
}

unint64_t sub_1A5C78164()
{
  result = qword_1EB1F3628;
  if (!qword_1EB1F3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3628);
  }

  return result;
}

unint64_t sub_1A5C781B8()
{
  result = qword_1EB249710;
  if (!qword_1EB249710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249710);
  }

  return result;
}

unint64_t sub_1A5C7820C()
{
  result = qword_1EB1F3630;
  if (!qword_1EB1F3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3630);
  }

  return result;
}

unint64_t sub_1A5C78260()
{
  result = qword_1EB249718;
  if (!qword_1EB249718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249718);
  }

  return result;
}

unint64_t sub_1A5C782B4()
{
  result = qword_1EB1F3638;
  if (!qword_1EB1F3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3638);
  }

  return result;
}

unint64_t sub_1A5C78308()
{
  result = qword_1EB249720;
  if (!qword_1EB249720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249720);
  }

  return result;
}

unint64_t sub_1A5C7835C()
{
  result = qword_1EB1F3640;
  if (!qword_1EB1F3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3640);
  }

  return result;
}

unint64_t sub_1A5C783B0()
{
  result = qword_1EB249728;
  if (!qword_1EB249728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249728);
  }

  return result;
}

unint64_t sub_1A5C78404()
{
  result = qword_1EB1F3648;
  if (!qword_1EB1F3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3648);
  }

  return result;
}

unint64_t sub_1A5C78458()
{
  result = qword_1EB249730;
  if (!qword_1EB249730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249730);
  }

  return result;
}

unint64_t sub_1A5C784AC()
{
  result = qword_1EB1F3650;
  if (!qword_1EB1F3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3650);
  }

  return result;
}

unint64_t sub_1A5C78500()
{
  result = qword_1EB249738;
  if (!qword_1EB249738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249738);
  }

  return result;
}

unint64_t sub_1A5C78554()
{
  result = qword_1EB1F3658;
  if (!qword_1EB1F3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3658);
  }

  return result;
}

unint64_t sub_1A5C785A8()
{
  result = qword_1EB249740;
  if (!qword_1EB249740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249740);
  }

  return result;
}

unint64_t sub_1A5C785FC()
{
  result = qword_1EB1F3660;
  if (!qword_1EB1F3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3660);
  }

  return result;
}

unint64_t sub_1A5C78650()
{
  result = qword_1EB249748;
  if (!qword_1EB249748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249748);
  }

  return result;
}

unint64_t sub_1A5C786A4()
{
  result = qword_1EB1F3668;
  if (!qword_1EB1F3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3668);
  }

  return result;
}

unint64_t sub_1A5C786F8()
{
  result = qword_1EB249750;
  if (!qword_1EB249750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249750);
  }

  return result;
}

unint64_t sub_1A5C7874C()
{
  result = qword_1EB1F3670;
  if (!qword_1EB1F3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3670);
  }

  return result;
}

unint64_t sub_1A5C787A0()
{
  result = qword_1EB249758;
  if (!qword_1EB249758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249758);
  }

  return result;
}

unint64_t sub_1A5C787F4()
{
  result = qword_1EB1F3678;
  if (!qword_1EB1F3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3678);
  }

  return result;
}

unint64_t sub_1A5C78848()
{
  result = qword_1EB249760;
  if (!qword_1EB249760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249760);
  }

  return result;
}

unint64_t sub_1A5C7889C()
{
  result = qword_1EB1F3680;
  if (!qword_1EB1F3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3680);
  }

  return result;
}

unint64_t sub_1A5C788F0()
{
  result = qword_1EB249768;
  if (!qword_1EB249768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249768);
  }

  return result;
}

unint64_t sub_1A5C78944()
{
  result = qword_1EB1F3688;
  if (!qword_1EB1F3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3688);
  }

  return result;
}

unint64_t sub_1A5C78998()
{
  result = qword_1EB249770;
  if (!qword_1EB249770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249770);
  }

  return result;
}

unint64_t sub_1A5C789EC()
{
  result = qword_1EB1F3690;
  if (!qword_1EB1F3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3690);
  }

  return result;
}

unint64_t sub_1A5C78A40()
{
  result = qword_1EB249778;
  if (!qword_1EB249778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249778);
  }

  return result;
}

unint64_t sub_1A5C78A94()
{
  result = qword_1EB1F3698;
  if (!qword_1EB1F3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3698);
  }

  return result;
}

unint64_t sub_1A5C78AE8()
{
  result = qword_1EB249780;
  if (!qword_1EB249780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249780);
  }

  return result;
}

unint64_t sub_1A5C78B3C()
{
  result = qword_1EB1F36A0;
  if (!qword_1EB1F36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36A0);
  }

  return result;
}

unint64_t sub_1A5C78B90()
{
  result = qword_1EB249788;
  if (!qword_1EB249788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249788);
  }

  return result;
}

unint64_t sub_1A5C78BE4()
{
  result = qword_1EB1F36A8;
  if (!qword_1EB1F36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36A8);
  }

  return result;
}

unint64_t sub_1A5C78C38()
{
  result = qword_1EB249790;
  if (!qword_1EB249790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249790);
  }

  return result;
}

unint64_t sub_1A5C78C8C()
{
  result = qword_1EB1F36B0;
  if (!qword_1EB1F36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36B0);
  }

  return result;
}

unint64_t sub_1A5C78CE0()
{
  result = qword_1EB249798;
  if (!qword_1EB249798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249798);
  }

  return result;
}

unint64_t sub_1A5C78D34()
{
  result = qword_1EB1F36B8;
  if (!qword_1EB1F36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36B8);
  }

  return result;
}

unint64_t sub_1A5C78D88()
{
  result = qword_1EB2497A0;
  if (!qword_1EB2497A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497A0);
  }

  return result;
}

unint64_t sub_1A5C78DDC()
{
  result = qword_1EB1F36C0;
  if (!qword_1EB1F36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36C0);
  }

  return result;
}

unint64_t sub_1A5C78E30()
{
  result = qword_1EB2497A8;
  if (!qword_1EB2497A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497A8);
  }

  return result;
}

unint64_t sub_1A5C78E84()
{
  result = qword_1EB1F36C8;
  if (!qword_1EB1F36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36C8);
  }

  return result;
}

unint64_t sub_1A5C78ED8()
{
  result = qword_1EB2497B0;
  if (!qword_1EB2497B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497B0);
  }

  return result;
}

unint64_t sub_1A5C78F2C()
{
  result = qword_1EB1F36D0;
  if (!qword_1EB1F36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36D0);
  }

  return result;
}

unint64_t sub_1A5C78F80()
{
  result = qword_1EB2497B8;
  if (!qword_1EB2497B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497B8);
  }

  return result;
}

unint64_t sub_1A5C78FD4()
{
  result = qword_1EB1F36D8;
  if (!qword_1EB1F36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36D8);
  }

  return result;
}

unint64_t sub_1A5C79028()
{
  result = qword_1EB2497C0;
  if (!qword_1EB2497C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497C0);
  }

  return result;
}

unint64_t sub_1A5C7907C()
{
  result = qword_1EB1F36E0;
  if (!qword_1EB1F36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36E0);
  }

  return result;
}

unint64_t sub_1A5C790D0()
{
  result = qword_1EB2497C8;
  if (!qword_1EB2497C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497C8);
  }

  return result;
}

unint64_t sub_1A5C79124()
{
  result = qword_1EB1F36E8;
  if (!qword_1EB1F36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36E8);
  }

  return result;
}

unint64_t sub_1A5C79178()
{
  result = qword_1EB2497D0;
  if (!qword_1EB2497D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497D0);
  }

  return result;
}

unint64_t sub_1A5C791CC()
{
  result = qword_1EB1F36F0;
  if (!qword_1EB1F36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36F0);
  }

  return result;
}

unint64_t sub_1A5C79220()
{
  result = qword_1EB2497D8;
  if (!qword_1EB2497D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497D8);
  }

  return result;
}

unint64_t sub_1A5C79274()
{
  result = qword_1EB1F36F8;
  if (!qword_1EB1F36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F36F8);
  }

  return result;
}

unint64_t sub_1A5C792C8()
{
  result = qword_1EB2497E0;
  if (!qword_1EB2497E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497E0);
  }

  return result;
}

unint64_t sub_1A5C7931C()
{
  result = qword_1EB1F3700;
  if (!qword_1EB1F3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3700);
  }

  return result;
}

unint64_t sub_1A5C79370()
{
  result = qword_1EB2497E8;
  if (!qword_1EB2497E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497E8);
  }

  return result;
}

unint64_t sub_1A5C793C4()
{
  result = qword_1EB1F3708;
  if (!qword_1EB1F3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3708);
  }

  return result;
}

unint64_t sub_1A5C79418()
{
  result = qword_1EB2497F0;
  if (!qword_1EB2497F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497F0);
  }

  return result;
}

unint64_t sub_1A5C7946C()
{
  result = qword_1EB1F3710;
  if (!qword_1EB1F3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3710);
  }

  return result;
}

unint64_t sub_1A5C794C0()
{
  result = qword_1EB2497F8;
  if (!qword_1EB2497F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2497F8);
  }

  return result;
}

unint64_t sub_1A5C79514()
{
  result = qword_1EB1F3718;
  if (!qword_1EB1F3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3718);
  }

  return result;
}

unint64_t sub_1A5C79568()
{
  result = qword_1EB249800[0];
  if (!qword_1EB249800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB249800);
  }

  return result;
}

unint64_t sub_1A5C795BC()
{
  result = qword_1EB1F3720;
  if (!qword_1EB1F3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3720);
  }

  return result;
}

unint64_t sub_1A5C79610()
{
  result = qword_1EB1F3728;
  if (!qword_1EB1F3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3728);
  }

  return result;
}

unint64_t sub_1A5C79664()
{
  result = qword_1EB1F3730;
  if (!qword_1EB1F3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3730);
  }

  return result;
}

unint64_t sub_1A5C796B8()
{
  result = qword_1EB1F3738;
  if (!qword_1EB1F3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3738);
  }

  return result;
}

unint64_t sub_1A5C7970C()
{
  result = qword_1EB1F3740;
  if (!qword_1EB1F3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3740);
  }

  return result;
}

unint64_t sub_1A5C79760()
{
  result = qword_1EB1F3748;
  if (!qword_1EB1F3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3748);
  }

  return result;
}

unint64_t sub_1A5C797B4()
{
  result = qword_1EB1F3750;
  if (!qword_1EB1F3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3750);
  }

  return result;
}

unint64_t sub_1A5C79808()
{
  result = qword_1EB1F3758;
  if (!qword_1EB1F3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3758);
  }

  return result;
}

unint64_t sub_1A5C7985C()
{
  result = qword_1EB1F3760;
  if (!qword_1EB1F3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3760);
  }

  return result;
}

unint64_t sub_1A5C798B0()
{
  result = qword_1EB1F3768;
  if (!qword_1EB1F3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3768);
  }

  return result;
}

unint64_t sub_1A5C79904()
{
  result = qword_1EB1F3770;
  if (!qword_1EB1F3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3770);
  }

  return result;
}

unint64_t sub_1A5C79958()
{
  result = qword_1EB1F3778;
  if (!qword_1EB1F3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3778);
  }

  return result;
}

unint64_t sub_1A5C799AC()
{
  result = qword_1EB1F3780;
  if (!qword_1EB1F3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3780);
  }

  return result;
}

unint64_t sub_1A5C79A00()
{
  result = qword_1EB1F3788;
  if (!qword_1EB1F3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3788);
  }

  return result;
}

unint64_t sub_1A5C79A54()
{
  result = qword_1EB1F3790;
  if (!qword_1EB1F3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3790);
  }

  return result;
}

unint64_t sub_1A5C79AA8()
{
  result = qword_1EB1F3798;
  if (!qword_1EB1F3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3798);
  }

  return result;
}

unint64_t sub_1A5C79AFC()
{
  result = qword_1EB1F37A0;
  if (!qword_1EB1F37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37A0);
  }

  return result;
}

unint64_t sub_1A5C79B50()
{
  result = qword_1EB1F37A8;
  if (!qword_1EB1F37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37A8);
  }

  return result;
}

unint64_t sub_1A5C79BA4()
{
  result = qword_1EB1F37B0;
  if (!qword_1EB1F37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37B0);
  }

  return result;
}

unint64_t sub_1A5C79BF8()
{
  result = qword_1EB1F37B8;
  if (!qword_1EB1F37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37B8);
  }

  return result;
}

unint64_t sub_1A5C79C4C()
{
  result = qword_1EB1F37C0;
  if (!qword_1EB1F37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37C0);
  }

  return result;
}

unint64_t sub_1A5C79CA0()
{
  result = qword_1EB1F37C8;
  if (!qword_1EB1F37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37C8);
  }

  return result;
}

unint64_t sub_1A5C79CF4()
{
  result = qword_1EB1F37D0;
  if (!qword_1EB1F37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37D0);
  }

  return result;
}

unint64_t sub_1A5C79D48()
{
  result = qword_1EB1F37D8;
  if (!qword_1EB1F37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37D8);
  }

  return result;
}

unint64_t sub_1A5C79D9C()
{
  result = qword_1EB1F37E0;
  if (!qword_1EB1F37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37E0);
  }

  return result;
}

unint64_t sub_1A5C79DF0()
{
  result = qword_1EB1F37E8;
  if (!qword_1EB1F37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37E8);
  }

  return result;
}

unint64_t sub_1A5C79E44()
{
  result = qword_1EB1F37F0;
  if (!qword_1EB1F37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37F0);
  }

  return result;
}

unint64_t sub_1A5C79E98()
{
  result = qword_1EB1F37F8;
  if (!qword_1EB1F37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F37F8);
  }

  return result;
}

unint64_t sub_1A5C79EEC()
{
  result = qword_1EB1F3800;
  if (!qword_1EB1F3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3800);
  }

  return result;
}

unint64_t sub_1A5C79F40()
{
  result = qword_1EB1F3808;
  if (!qword_1EB1F3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3808);
  }

  return result;
}

unint64_t sub_1A5C79F94()
{
  result = qword_1EB1F3810;
  if (!qword_1EB1F3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3810);
  }

  return result;
}

unint64_t sub_1A5C79FE8()
{
  result = qword_1EB1F3818;
  if (!qword_1EB1F3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3818);
  }

  return result;
}

unint64_t sub_1A5C7A03C()
{
  result = qword_1EB1F3820;
  if (!qword_1EB1F3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3820);
  }

  return result;
}

unint64_t sub_1A5C7A090()
{
  result = qword_1EB1F3828;
  if (!qword_1EB1F3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3828);
  }

  return result;
}

unint64_t sub_1A5C7A0E4()
{
  result = qword_1EB1F3830;
  if (!qword_1EB1F3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3830);
  }

  return result;
}

unint64_t sub_1A5C7A138()
{
  result = qword_1EB1F3838;
  if (!qword_1EB1F3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3838);
  }

  return result;
}

unint64_t sub_1A5C7A18C()
{
  result = qword_1EB1F3840;
  if (!qword_1EB1F3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3840);
  }

  return result;
}

unint64_t sub_1A5C7A1E0()
{
  result = qword_1EB1F3848;
  if (!qword_1EB1F3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3848);
  }

  return result;
}

unint64_t sub_1A5C7A234()
{
  result = qword_1EB1F3850;
  if (!qword_1EB1F3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3850);
  }

  return result;
}

unint64_t sub_1A5C7A288()
{
  result = qword_1EB1F3858;
  if (!qword_1EB1F3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3858);
  }

  return result;
}

unint64_t sub_1A5C7A2DC()
{
  result = qword_1EB1F3860;
  if (!qword_1EB1F3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3860);
  }

  return result;
}

unint64_t sub_1A5C7A330()
{
  result = qword_1EB1F3868;
  if (!qword_1EB1F3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3868);
  }

  return result;
}

unint64_t sub_1A5C7A384()
{
  result = qword_1EB1F3870;
  if (!qword_1EB1F3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3870);
  }

  return result;
}

unint64_t sub_1A5C7A3D8()
{
  result = qword_1EB1F3878;
  if (!qword_1EB1F3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3878);
  }

  return result;
}

unint64_t sub_1A5C7A42C()
{
  result = qword_1EB1F3880;
  if (!qword_1EB1F3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3880);
  }

  return result;
}

unint64_t sub_1A5C7A480()
{
  result = qword_1EB1F3888;
  if (!qword_1EB1F3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3888);
  }

  return result;
}

unint64_t sub_1A5C7A4D4()
{
  result = qword_1EB1F3890;
  if (!qword_1EB1F3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3890);
  }

  return result;
}

unint64_t sub_1A5C7A528()
{
  result = qword_1EB1F3898;
  if (!qword_1EB1F3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3898);
  }

  return result;
}

unint64_t sub_1A5C7A57C()
{
  result = qword_1EB1F38A0;
  if (!qword_1EB1F38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38A0);
  }

  return result;
}

unint64_t sub_1A5C7A5D0()
{
  result = qword_1EB1F38A8;
  if (!qword_1EB1F38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38A8);
  }

  return result;
}

unint64_t sub_1A5C7A624()
{
  result = qword_1EB1F38B0;
  if (!qword_1EB1F38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38B0);
  }

  return result;
}

unint64_t sub_1A5C7A678()
{
  result = qword_1EB1F38B8;
  if (!qword_1EB1F38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38B8);
  }

  return result;
}

unint64_t sub_1A5C7A6CC()
{
  result = qword_1EB1F38C0;
  if (!qword_1EB1F38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38C0);
  }

  return result;
}

unint64_t sub_1A5C7A720()
{
  result = qword_1EB1F38C8;
  if (!qword_1EB1F38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38C8);
  }

  return result;
}

unint64_t sub_1A5C7A774()
{
  result = qword_1EB1F38D0;
  if (!qword_1EB1F38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38D0);
  }

  return result;
}

unint64_t sub_1A5C7A7C8()
{
  result = qword_1EB1F38D8;
  if (!qword_1EB1F38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38D8);
  }

  return result;
}

unint64_t sub_1A5C7A81C()
{
  result = qword_1EB1F38E0;
  if (!qword_1EB1F38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38E0);
  }

  return result;
}

unint64_t sub_1A5C7A870()
{
  result = qword_1EB1F38E8;
  if (!qword_1EB1F38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38E8);
  }

  return result;
}

unint64_t sub_1A5C7A8C4()
{
  result = qword_1EB1F38F0;
  if (!qword_1EB1F38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38F0);
  }

  return result;
}

unint64_t sub_1A5C7A918()
{
  result = qword_1EB1F38F8;
  if (!qword_1EB1F38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F38F8);
  }

  return result;
}

unint64_t sub_1A5C7A96C()
{
  result = qword_1EB1F3900;
  if (!qword_1EB1F3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3900);
  }

  return result;
}

unint64_t sub_1A5C7A9C0()
{
  result = qword_1EB1F3908;
  if (!qword_1EB1F3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3908);
  }

  return result;
}

unint64_t sub_1A5C7AA14()
{
  result = qword_1EB1F3910;
  if (!qword_1EB1F3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3910);
  }

  return result;
}

unint64_t sub_1A5C7AA68()
{
  result = qword_1EB1F3918;
  if (!qword_1EB1F3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3918);
  }

  return result;
}

unint64_t sub_1A5C7AABC()
{
  result = qword_1EB1F3920;
  if (!qword_1EB1F3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3920);
  }

  return result;
}

unint64_t sub_1A5C7AB10()
{
  result = qword_1EB1F3928;
  if (!qword_1EB1F3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3928);
  }

  return result;
}

unint64_t sub_1A5C7AB64()
{
  result = qword_1EB1F3930;
  if (!qword_1EB1F3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3930);
  }

  return result;
}

unint64_t sub_1A5C7ABB8()
{
  result = qword_1EB1F3938;
  if (!qword_1EB1F3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3938);
  }

  return result;
}

unint64_t sub_1A5C7AC0C()
{
  result = qword_1EB1F3940;
  if (!qword_1EB1F3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3940);
  }

  return result;
}

unint64_t sub_1A5C7AC60()
{
  result = qword_1EB1F3948;
  if (!qword_1EB1F3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3948);
  }

  return result;
}

unint64_t sub_1A5C7ACB4()
{
  result = qword_1EB1F3950;
  if (!qword_1EB1F3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3950);
  }

  return result;
}

unint64_t sub_1A5C7AD08()
{
  result = qword_1EB1F3958;
  if (!qword_1EB1F3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3958);
  }

  return result;
}

unint64_t sub_1A5C7AD5C()
{
  result = qword_1EB1F3960;
  if (!qword_1EB1F3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3960);
  }

  return result;
}

unint64_t sub_1A5C7ADB0()
{
  result = qword_1EB1F3BB0;
  if (!qword_1EB1F3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BB0);
  }

  return result;
}

unint64_t sub_1A5C7AE04()
{
  result = qword_1EB1F3BB8;
  if (!qword_1EB1F3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BB8);
  }

  return result;
}

unint64_t sub_1A5C7AE58()
{
  result = qword_1EB1F3BC0;
  if (!qword_1EB1F3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BC0);
  }

  return result;
}

unint64_t sub_1A5C7AEAC()
{
  result = qword_1EB1F3BC8;
  if (!qword_1EB1F3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BC8);
  }

  return result;
}

unint64_t sub_1A5C7AF00()
{
  result = qword_1EB1F3BD0;
  if (!qword_1EB1F3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BD0);
  }

  return result;
}

unint64_t sub_1A5C7AF54()
{
  result = qword_1EB1F3BD8;
  if (!qword_1EB1F3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BD8);
  }

  return result;
}

unint64_t sub_1A5C7AFA8()
{
  result = qword_1EB1F3BE0;
  if (!qword_1EB1F3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BE0);
  }

  return result;
}

unint64_t sub_1A5C7AFFC()
{
  result = qword_1EB1F3BE8;
  if (!qword_1EB1F3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BE8);
  }

  return result;
}

unint64_t sub_1A5C7B050()
{
  result = qword_1EB1F3BF0;
  if (!qword_1EB1F3BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BF0);
  }

  return result;
}

unint64_t sub_1A5C7B0A4()
{
  result = qword_1EB1F3BF8;
  if (!qword_1EB1F3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3BF8);
  }

  return result;
}

unint64_t sub_1A5C7B0F8()
{
  result = qword_1EB1F3C00;
  if (!qword_1EB1F3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C00);
  }

  return result;
}

unint64_t sub_1A5C7B14C()
{
  result = qword_1EB1F3C08;
  if (!qword_1EB1F3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C08);
  }

  return result;
}

unint64_t sub_1A5C7B1A0()
{
  result = qword_1EB1F3C10;
  if (!qword_1EB1F3C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C10);
  }

  return result;
}

unint64_t sub_1A5C7B1F4()
{
  result = qword_1EB1F3C18;
  if (!qword_1EB1F3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C18);
  }

  return result;
}

unint64_t sub_1A5C7B248()
{
  result = qword_1EB1F3C20;
  if (!qword_1EB1F3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C20);
  }

  return result;
}

unint64_t sub_1A5C7B29C()
{
  result = qword_1EB1F3C28;
  if (!qword_1EB1F3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C28);
  }

  return result;
}

unint64_t sub_1A5C7B2F0()
{
  result = qword_1EB1F3C30;
  if (!qword_1EB1F3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C30);
  }

  return result;
}

unint64_t sub_1A5C7B344()
{
  result = qword_1EB1F3C38;
  if (!qword_1EB1F3C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C38);
  }

  return result;
}

unint64_t sub_1A5C7B398()
{
  result = qword_1EB1F3C40;
  if (!qword_1EB1F3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C40);
  }

  return result;
}

unint64_t sub_1A5C7B3EC()
{
  result = qword_1EB1F3C48;
  if (!qword_1EB1F3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C48);
  }

  return result;
}

unint64_t sub_1A5C7B440()
{
  result = qword_1EB1F3C50;
  if (!qword_1EB1F3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C50);
  }

  return result;
}

unint64_t sub_1A5C7B494()
{
  result = qword_1EB1F3C58;
  if (!qword_1EB1F3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C58);
  }

  return result;
}

unint64_t sub_1A5C7B4E8()
{
  result = qword_1EB1F3C60;
  if (!qword_1EB1F3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C60);
  }

  return result;
}

unint64_t sub_1A5C7B53C()
{
  result = qword_1EB1F3C68;
  if (!qword_1EB1F3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C68);
  }

  return result;
}

unint64_t sub_1A5C7B590()
{
  result = qword_1EB1F3C70;
  if (!qword_1EB1F3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C70);
  }

  return result;
}

unint64_t sub_1A5C7B5E4()
{
  result = qword_1EB1F3C78;
  if (!qword_1EB1F3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C78);
  }

  return result;
}

unint64_t sub_1A5C7B638()
{
  result = qword_1EB1F3C80;
  if (!qword_1EB1F3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C80);
  }

  return result;
}

unint64_t sub_1A5C7B68C()
{
  result = qword_1EB1F3C88;
  if (!qword_1EB1F3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C88);
  }

  return result;
}

unint64_t sub_1A5C7B6E0()
{
  result = qword_1EB1F3C90;
  if (!qword_1EB1F3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C90);
  }

  return result;
}

unint64_t sub_1A5C7B734()
{
  result = qword_1EB1F3C98;
  if (!qword_1EB1F3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3C98);
  }

  return result;
}

unint64_t sub_1A5C7B788()
{
  result = qword_1EB1F3CA0;
  if (!qword_1EB1F3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CA0);
  }

  return result;
}

unint64_t sub_1A5C7B7DC()
{
  result = qword_1EB1F3CA8;
  if (!qword_1EB1F3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CA8);
  }

  return result;
}

unint64_t sub_1A5C7B830()
{
  result = qword_1EB1F3CB0;
  if (!qword_1EB1F3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CB0);
  }

  return result;
}

unint64_t sub_1A5C7B884()
{
  result = qword_1EB1F3CB8;
  if (!qword_1EB1F3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CB8);
  }

  return result;
}

unint64_t sub_1A5C7B8D8()
{
  result = qword_1EB1F3CC0;
  if (!qword_1EB1F3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CC0);
  }

  return result;
}

unint64_t sub_1A5C7B92C()
{
  result = qword_1EB1F3CC8;
  if (!qword_1EB1F3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CC8);
  }

  return result;
}

unint64_t sub_1A5C7B980()
{
  result = qword_1EB1F3CD0;
  if (!qword_1EB1F3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CD0);
  }

  return result;
}

unint64_t sub_1A5C7B9D4()
{
  result = qword_1EB1F3CD8;
  if (!qword_1EB1F3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CD8);
  }

  return result;
}

unint64_t sub_1A5C7BA28()
{
  result = qword_1EB1F3CE0;
  if (!qword_1EB1F3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CE0);
  }

  return result;
}

unint64_t sub_1A5C7BA7C()
{
  result = qword_1EB1F3CE8;
  if (!qword_1EB1F3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CE8);
  }

  return result;
}

unint64_t sub_1A5C7BAD0()
{
  result = qword_1EB1F3CF0;
  if (!qword_1EB1F3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CF0);
  }

  return result;
}

unint64_t sub_1A5C7BB24()
{
  result = qword_1EB1F3CF8;
  if (!qword_1EB1F3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3CF8);
  }

  return result;
}

unint64_t sub_1A5C7BB78()
{
  result = qword_1EB1F3D00;
  if (!qword_1EB1F3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D00);
  }

  return result;
}

unint64_t sub_1A5C7BBCC()
{
  result = qword_1EB1F3D08;
  if (!qword_1EB1F3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D08);
  }

  return result;
}

unint64_t sub_1A5C7BC20()
{
  result = qword_1EB1F3D10;
  if (!qword_1EB1F3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D10);
  }

  return result;
}

unint64_t sub_1A5C7BC74()
{
  result = qword_1EB1F3D18;
  if (!qword_1EB1F3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D18);
  }

  return result;
}

unint64_t sub_1A5C7BCC8()
{
  result = qword_1EB1F3D20;
  if (!qword_1EB1F3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D20);
  }

  return result;
}

unint64_t sub_1A5C7BD1C()
{
  result = qword_1EB1F3D28;
  if (!qword_1EB1F3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D28);
  }

  return result;
}

unint64_t sub_1A5C7BD70()
{
  result = qword_1EB1F3D30;
  if (!qword_1EB1F3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D30);
  }

  return result;
}

unint64_t sub_1A5C7BDC4()
{
  result = qword_1EB1F3D38;
  if (!qword_1EB1F3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D38);
  }

  return result;
}

unint64_t sub_1A5C7BE18()
{
  result = qword_1EB1F3D40;
  if (!qword_1EB1F3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D40);
  }

  return result;
}

unint64_t sub_1A5C7BE6C()
{
  result = qword_1EB1F3D48;
  if (!qword_1EB1F3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D48);
  }

  return result;
}

unint64_t sub_1A5C7BEC0()
{
  result = qword_1EB1F3D50;
  if (!qword_1EB1F3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D50);
  }

  return result;
}

unint64_t sub_1A5C7BF14()
{
  result = qword_1EB1F3D58;
  if (!qword_1EB1F3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D58);
  }

  return result;
}

unint64_t sub_1A5C7BF68()
{
  result = qword_1EB1F3D60;
  if (!qword_1EB1F3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D60);
  }

  return result;
}

unint64_t sub_1A5C7BFBC()
{
  result = qword_1EB1F3D68;
  if (!qword_1EB1F3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D68);
  }

  return result;
}

unint64_t sub_1A5C7C010()
{
  result = qword_1EB1F3D70;
  if (!qword_1EB1F3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D70);
  }

  return result;
}

unint64_t sub_1A5C7C064()
{
  result = qword_1EB1F3D78;
  if (!qword_1EB1F3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D78);
  }

  return result;
}

unint64_t sub_1A5C7C0B8()
{
  result = qword_1EB1F3D80;
  if (!qword_1EB1F3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D80);
  }

  return result;
}

unint64_t sub_1A5C7C10C()
{
  result = qword_1EB1F3D88;
  if (!qword_1EB1F3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D88);
  }

  return result;
}

unint64_t sub_1A5C7C160()
{
  result = qword_1EB1F3D90;
  if (!qword_1EB1F3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D90);
  }

  return result;
}

unint64_t sub_1A5C7C1B4()
{
  result = qword_1EB1F3D98;
  if (!qword_1EB1F3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3D98);
  }

  return result;
}

unint64_t sub_1A5C7C208()
{
  result = qword_1EB1F3DA0;
  if (!qword_1EB1F3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DA0);
  }

  return result;
}

unint64_t sub_1A5C7C25C()
{
  result = qword_1EB1F3DA8;
  if (!qword_1EB1F3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DA8);
  }

  return result;
}

unint64_t sub_1A5C7C2B0()
{
  result = qword_1EB1F3DB0;
  if (!qword_1EB1F3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DB0);
  }

  return result;
}

unint64_t sub_1A5C7C304()
{
  result = qword_1EB1F3DB8;
  if (!qword_1EB1F3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DB8);
  }

  return result;
}

unint64_t sub_1A5C7C358()
{
  result = qword_1EB1F3DC0;
  if (!qword_1EB1F3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DC0);
  }

  return result;
}

unint64_t sub_1A5C7C3AC()
{
  result = qword_1EB1F3DC8;
  if (!qword_1EB1F3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DC8);
  }

  return result;
}

unint64_t sub_1A5C7C400()
{
  result = qword_1EB1F3DD0;
  if (!qword_1EB1F3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DD0);
  }

  return result;
}

unint64_t sub_1A5C7C454()
{
  result = qword_1EB1F3DD8;
  if (!qword_1EB1F3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DD8);
  }

  return result;
}

unint64_t sub_1A5C7C4A8()
{
  result = qword_1EB1F3DE0;
  if (!qword_1EB1F3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DE0);
  }

  return result;
}

unint64_t sub_1A5C7C4FC()
{
  result = qword_1EB1F3DE8;
  if (!qword_1EB1F3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestDescriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1FB9)
  {
    goto LABEL_17;
  }

  if (a2 + 57415 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 57415 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 57415;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 57415;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 57415;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) | (32 * *(a1 + 1))) ^ 0x1FFF;
  if (v6 >> 3 >= 0x3F7)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for RequestDescriptor(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57415 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 57415 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1FB9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1FB8)
  {
    v6 = ((a2 - 8121) >> 16) + 1;
    *result = a2 - 8121;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = __PAIR16__((-8 * a2) >> 24, -8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1A5C7C6C8(unsigned __int8 *a1)
{
  HIDWORD(v1) = a1[1];
  LODWORD(v1) = *a1 << 24;
  return (v1 >> 27);
}

_BYTE *sub_1A5C7C6F0(_BYTE *result, unsigned int a2)
{
  *result = *result & 7 | (8 * a2);
  result[1] = a2 >> 5;
  return result;
}

uint64_t getEnumTagSinglePayload for RequestDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB9)
  {
    goto LABEL_17;
  }

  if (a2 + 71 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 71) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 71;
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

      return (*a1 | (v4 << 8)) - 71;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 71;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v8 = v6 - 72;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB9)
  {
    v4 = 0;
  }

  if (a2 > 0xB8)
  {
    v5 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
    *result = a2 + 71;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5C7CCEC()
{
  result = qword_1EB249B90[0];
  if (!qword_1EB249B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB249B90);
  }

  return result;
}

unint64_t sub_1A5C7CD44()
{
  result = qword_1EB249DA0[0];
  if (!qword_1EB249DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB249DA0);
  }

  return result;
}

unint64_t sub_1A5C7CD9C()
{
  result = qword_1EB249FB0[0];
  if (!qword_1EB249FB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB249FB0);
  }

  return result;
}

unint64_t sub_1A5C7CDF4()
{
  result = qword_1EB24A1C0[0];
  if (!qword_1EB24A1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24A1C0);
  }

  return result;
}

unint64_t sub_1A5C7CE4C()
{
  result = qword_1EB24A3D0[0];
  if (!qword_1EB24A3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24A3D0);
  }

  return result;
}

unint64_t sub_1A5C7CEA4()
{
  result = qword_1EB24A5E0[0];
  if (!qword_1EB24A5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24A5E0);
  }

  return result;
}

unint64_t sub_1A5C7CEFC()
{
  result = qword_1EB24A7F0[0];
  if (!qword_1EB24A7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24A7F0);
  }

  return result;
}

unint64_t sub_1A5C7CF54()
{
  result = qword_1EB24AA00[0];
  if (!qword_1EB24AA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24AA00);
  }

  return result;
}

unint64_t sub_1A5C7CFAC()
{
  result = qword_1EB24AC10[0];
  if (!qword_1EB24AC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24AC10);
  }

  return result;
}

unint64_t sub_1A5C7D004()
{
  result = qword_1EB24AE20[0];
  if (!qword_1EB24AE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24AE20);
  }

  return result;
}

unint64_t sub_1A5C7D05C()
{
  result = qword_1EB24B030[0];
  if (!qword_1EB24B030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24B030);
  }

  return result;
}

unint64_t sub_1A5C7D0B4()
{
  result = qword_1EB24B240[0];
  if (!qword_1EB24B240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24B240);
  }

  return result;
}

unint64_t sub_1A5C7D10C()
{
  result = qword_1EB24B450[0];
  if (!qword_1EB24B450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24B450);
  }

  return result;
}

unint64_t sub_1A5C7D164()
{
  result = qword_1EB24B660[0];
  if (!qword_1EB24B660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24B660);
  }

  return result;
}

unint64_t sub_1A5C7D1BC()
{
  result = qword_1EB24B870[0];
  if (!qword_1EB24B870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24B870);
  }

  return result;
}

unint64_t sub_1A5C7D214()
{
  result = qword_1EB24BA80[0];
  if (!qword_1EB24BA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24BA80);
  }

  return result;
}

unint64_t sub_1A5C7D26C()
{
  result = qword_1EB24BC90[0];
  if (!qword_1EB24BC90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24BC90);
  }

  return result;
}

unint64_t sub_1A5C7D2C4()
{
  result = qword_1EB24BEA0[0];
  if (!qword_1EB24BEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24BEA0);
  }

  return result;
}

unint64_t sub_1A5C7D31C()
{
  result = qword_1EB24C0B0[0];
  if (!qword_1EB24C0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24C0B0);
  }

  return result;
}

unint64_t sub_1A5C7D374()
{
  result = qword_1EB24C2C0[0];
  if (!qword_1EB24C2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24C2C0);
  }

  return result;
}

unint64_t sub_1A5C7D3CC()
{
  result = qword_1EB24C4D0[0];
  if (!qword_1EB24C4D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24C4D0);
  }

  return result;
}

unint64_t sub_1A5C7D424()
{
  result = qword_1EB24C6E0[0];
  if (!qword_1EB24C6E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24C6E0);
  }

  return result;
}

unint64_t sub_1A5C7D47C()
{
  result = qword_1EB24C8F0[0];
  if (!qword_1EB24C8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24C8F0);
  }

  return result;
}

unint64_t sub_1A5C7D4D4()
{
  result = qword_1EB24CB00[0];
  if (!qword_1EB24CB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24CB00);
  }

  return result;
}

unint64_t sub_1A5C7D52C()
{
  result = qword_1EB24CD10[0];
  if (!qword_1EB24CD10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24CD10);
  }

  return result;
}

unint64_t sub_1A5C7D584()
{
  result = qword_1EB24CF20[0];
  if (!qword_1EB24CF20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24CF20);
  }

  return result;
}

unint64_t sub_1A5C7D5DC()
{
  result = qword_1EB24D130[0];
  if (!qword_1EB24D130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24D130);
  }

  return result;
}

unint64_t sub_1A5C7D634()
{
  result = qword_1EB24D340[0];
  if (!qword_1EB24D340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24D340);
  }

  return result;
}

unint64_t sub_1A5C7D68C()
{
  result = qword_1EB24D550[0];
  if (!qword_1EB24D550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24D550);
  }

  return result;
}

unint64_t sub_1A5C7D6E4()
{
  result = qword_1EB24D760[0];
  if (!qword_1EB24D760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24D760);
  }

  return result;
}

unint64_t sub_1A5C7D73C()
{
  result = qword_1EB24D970[0];
  if (!qword_1EB24D970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24D970);
  }

  return result;
}

unint64_t sub_1A5C7D794()
{
  result = qword_1EB24DB80[0];
  if (!qword_1EB24DB80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24DB80);
  }

  return result;
}

unint64_t sub_1A5C7D7EC()
{
  result = qword_1EB24DD90[0];
  if (!qword_1EB24DD90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24DD90);
  }

  return result;
}

unint64_t sub_1A5C7D844()
{
  result = qword_1EB24DFA0[0];
  if (!qword_1EB24DFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24DFA0);
  }

  return result;
}

unint64_t sub_1A5C7D89C()
{
  result = qword_1EB24E1B0[0];
  if (!qword_1EB24E1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24E1B0);
  }

  return result;
}

unint64_t sub_1A5C7D8F4()
{
  result = qword_1EB24E3C0[0];
  if (!qword_1EB24E3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24E3C0);
  }

  return result;
}

unint64_t sub_1A5C7D94C()
{
  result = qword_1EB24E5D0[0];
  if (!qword_1EB24E5D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24E5D0);
  }

  return result;
}

unint64_t sub_1A5C7D9A4()
{
  result = qword_1EB24E7E0[0];
  if (!qword_1EB24E7E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24E7E0);
  }

  return result;
}

unint64_t sub_1A5C7D9FC()
{
  result = qword_1EB24E9F0;
  if (!qword_1EB24E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB24E9F0);
  }

  return result;
}

unint64_t sub_1A5C7DA54()
{
  result = qword_1EB24EC00[0];
  if (!qword_1EB24EC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24EC00);
  }

  return result;
}

unint64_t sub_1A5C7DAAC()
{
  result = qword_1EB24EE10[0];
  if (!qword_1EB24EE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24EE10);
  }

  return result;
}

unint64_t sub_1A5C7DB04()
{
  result = qword_1EB24F020[0];
  if (!qword_1EB24F020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24F020);
  }

  return result;
}

unint64_t sub_1A5C7DB5C()
{
  result = qword_1EB24F230[0];
  if (!qword_1EB24F230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24F230);
  }

  return result;
}

unint64_t sub_1A5C7DBB4()
{
  result = qword_1EB24F440[0];
  if (!qword_1EB24F440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24F440);
  }

  return result;
}

unint64_t sub_1A5C7DC0C()
{
  result = qword_1EB24F650[0];
  if (!qword_1EB24F650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24F650);
  }

  return result;
}

unint64_t sub_1A5C7DC64()
{
  result = qword_1EB24F860[0];
  if (!qword_1EB24F860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24F860);
  }

  return result;
}

unint64_t sub_1A5C7DCBC()
{
  result = qword_1EB24FA70[0];
  if (!qword_1EB24FA70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24FA70);
  }

  return result;
}

unint64_t sub_1A5C7DD14()
{
  result = qword_1EB24FC80[0];
  if (!qword_1EB24FC80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24FC80);
  }

  return result;
}

unint64_t sub_1A5C7DD6C()
{
  result = qword_1EB24FE90[0];
  if (!qword_1EB24FE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB24FE90);
  }

  return result;
}

unint64_t sub_1A5C7DDC4()
{
  result = qword_1EB2500A0[0];
  if (!qword_1EB2500A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2500A0);
  }

  return result;
}

unint64_t sub_1A5C7DE1C()
{
  result = qword_1EB2502B0[0];
  if (!qword_1EB2502B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2502B0);
  }

  return result;
}

unint64_t sub_1A5C7DE74()
{
  result = qword_1EB2504C0[0];
  if (!qword_1EB2504C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2504C0);
  }

  return result;
}

unint64_t sub_1A5C7DECC()
{
  result = qword_1EB2506D0[0];
  if (!qword_1EB2506D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2506D0);
  }

  return result;
}

unint64_t sub_1A5C7DF24()
{
  result = qword_1EB2508E0[0];
  if (!qword_1EB2508E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2508E0);
  }

  return result;
}

unint64_t sub_1A5C7DF7C()
{
  result = qword_1EB250AF0[0];
  if (!qword_1EB250AF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB250AF0);
  }

  return result;
}

unint64_t sub_1A5C7DFD4()
{
  result = qword_1EB250D00[0];
  if (!qword_1EB250D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB250D00);
  }

  return result;
}

unint64_t sub_1A5C7E02C()
{
  result = qword_1EB250F10[0];
  if (!qword_1EB250F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB250F10);
  }

  return result;
}

unint64_t sub_1A5C7E084()
{
  result = qword_1EB251120[0];
  if (!qword_1EB251120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251120);
  }

  return result;
}

unint64_t sub_1A5C7E0DC()
{
  result = qword_1EB251330[0];
  if (!qword_1EB251330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251330);
  }

  return result;
}

unint64_t sub_1A5C7E134()
{
  result = qword_1EB251540[0];
  if (!qword_1EB251540[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251540);
  }

  return result;
}

unint64_t sub_1A5C7E18C()
{
  result = qword_1EB251750[0];
  if (!qword_1EB251750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251750);
  }

  return result;
}

unint64_t sub_1A5C7E1E4()
{
  result = qword_1EB251960[0];
  if (!qword_1EB251960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251960);
  }

  return result;
}

unint64_t sub_1A5C7E23C()
{
  result = qword_1EB251B70[0];
  if (!qword_1EB251B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251B70);
  }

  return result;
}

unint64_t sub_1A5C7E294()
{
  result = qword_1EB251D80[0];
  if (!qword_1EB251D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251D80);
  }

  return result;
}

unint64_t sub_1A5C7E2EC()
{
  result = qword_1EB251F90[0];
  if (!qword_1EB251F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB251F90);
  }

  return result;
}

unint64_t sub_1A5C7E344()
{
  result = qword_1EB2521A0[0];
  if (!qword_1EB2521A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2521A0);
  }

  return result;
}

unint64_t sub_1A5C7E39C()
{
  result = qword_1EB2523B0[0];
  if (!qword_1EB2523B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2523B0);
  }

  return result;
}

unint64_t sub_1A5C7E3F4()
{
  result = qword_1EB2525C0[0];
  if (!qword_1EB2525C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2525C0);
  }

  return result;
}

unint64_t sub_1A5C7E44C()
{
  result = qword_1EB2527D0[0];
  if (!qword_1EB2527D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2527D0);
  }

  return result;
}

unint64_t sub_1A5C7E4A4()
{
  result = qword_1EB2529E0[0];
  if (!qword_1EB2529E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2529E0);
  }

  return result;
}

unint64_t sub_1A5C7E4FC()
{
  result = qword_1EB252BF0[0];
  if (!qword_1EB252BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB252BF0);
  }

  return result;
}

unint64_t sub_1A5C7E554()
{
  result = qword_1EB252E00[0];
  if (!qword_1EB252E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB252E00);
  }

  return result;
}

unint64_t sub_1A5C7E5AC()
{
  result = qword_1EB253010[0];
  if (!qword_1EB253010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253010);
  }

  return result;
}

unint64_t sub_1A5C7E604()
{
  result = qword_1EB253120;
  if (!qword_1EB253120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253120);
  }

  return result;
}

unint64_t sub_1A5C7E65C()
{
  result = qword_1EB253128[0];
  if (!qword_1EB253128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253128);
  }

  return result;
}

unint64_t sub_1A5C7E6B4()
{
  result = qword_1EB2531B0;
  if (!qword_1EB2531B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2531B0);
  }

  return result;
}

unint64_t sub_1A5C7E70C()
{
  result = qword_1EB2531B8[0];
  if (!qword_1EB2531B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2531B8);
  }

  return result;
}

unint64_t sub_1A5C7E764()
{
  result = qword_1EB253240;
  if (!qword_1EB253240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253240);
  }

  return result;
}

unint64_t sub_1A5C7E7BC()
{
  result = qword_1EB253248[0];
  if (!qword_1EB253248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253248);
  }

  return result;
}

unint64_t sub_1A5C7E814()
{
  result = qword_1EB2532D0;
  if (!qword_1EB2532D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2532D0);
  }

  return result;
}

unint64_t sub_1A5C7E86C()
{
  result = qword_1EB2532D8[0];
  if (!qword_1EB2532D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2532D8);
  }

  return result;
}

unint64_t sub_1A5C7E8C4()
{
  result = qword_1EB253360;
  if (!qword_1EB253360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253360);
  }

  return result;
}

unint64_t sub_1A5C7E91C()
{
  result = qword_1EB253368[0];
  if (!qword_1EB253368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253368);
  }

  return result;
}

unint64_t sub_1A5C7E974()
{
  result = qword_1EB2533F0;
  if (!qword_1EB2533F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2533F0);
  }

  return result;
}

unint64_t sub_1A5C7E9CC()
{
  result = qword_1EB2533F8[0];
  if (!qword_1EB2533F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2533F8);
  }

  return result;
}

unint64_t sub_1A5C7EA24()
{
  result = qword_1EB253480;
  if (!qword_1EB253480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253480);
  }

  return result;
}

unint64_t sub_1A5C7EA7C()
{
  result = qword_1EB253488[0];
  if (!qword_1EB253488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253488);
  }

  return result;
}

unint64_t sub_1A5C7EAD4()
{
  result = qword_1EB253510;
  if (!qword_1EB253510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253510);
  }

  return result;
}

unint64_t sub_1A5C7EB2C()
{
  result = qword_1EB253518[0];
  if (!qword_1EB253518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253518);
  }

  return result;
}

unint64_t sub_1A5C7EB84()
{
  result = qword_1EB2535A0;
  if (!qword_1EB2535A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2535A0);
  }

  return result;
}

unint64_t sub_1A5C7EBDC()
{
  result = qword_1EB2535A8[0];
  if (!qword_1EB2535A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2535A8);
  }

  return result;
}

unint64_t sub_1A5C7EC34()
{
  result = qword_1EB253630;
  if (!qword_1EB253630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253630);
  }

  return result;
}

unint64_t sub_1A5C7EC8C()
{
  result = qword_1EB253638[0];
  if (!qword_1EB253638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253638);
  }

  return result;
}

unint64_t sub_1A5C7ECE4()
{
  result = qword_1EB2536C0;
  if (!qword_1EB2536C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2536C0);
  }

  return result;
}

unint64_t sub_1A5C7ED3C()
{
  result = qword_1EB2536C8[0];
  if (!qword_1EB2536C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2536C8);
  }

  return result;
}

unint64_t sub_1A5C7ED94()
{
  result = qword_1EB253750;
  if (!qword_1EB253750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253750);
  }

  return result;
}

unint64_t sub_1A5C7EDEC()
{
  result = qword_1EB253758[0];
  if (!qword_1EB253758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253758);
  }

  return result;
}

unint64_t sub_1A5C7EE44()
{
  result = qword_1EB2537E0;
  if (!qword_1EB2537E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2537E0);
  }

  return result;
}

unint64_t sub_1A5C7EE9C()
{
  result = qword_1EB2537E8[0];
  if (!qword_1EB2537E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2537E8);
  }

  return result;
}

unint64_t sub_1A5C7EEF4()
{
  result = qword_1EB253870;
  if (!qword_1EB253870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253870);
  }

  return result;
}

unint64_t sub_1A5C7EF4C()
{
  result = qword_1EB253878;
  if (!qword_1EB253878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253878);
  }

  return result;
}

unint64_t sub_1A5C7EFA4()
{
  result = qword_1EB253900;
  if (!qword_1EB253900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253900);
  }

  return result;
}

unint64_t sub_1A5C7EFFC()
{
  result = qword_1EB253908[0];
  if (!qword_1EB253908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253908);
  }

  return result;
}

unint64_t sub_1A5C7F054()
{
  result = qword_1EB253990;
  if (!qword_1EB253990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253990);
  }

  return result;
}

unint64_t sub_1A5C7F0AC()
{
  result = qword_1EB253998[0];
  if (!qword_1EB253998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253998);
  }

  return result;
}

unint64_t sub_1A5C7F104()
{
  result = qword_1EB253A20;
  if (!qword_1EB253A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253A20);
  }

  return result;
}

unint64_t sub_1A5C7F15C()
{
  result = qword_1EB253A28[0];
  if (!qword_1EB253A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253A28);
  }

  return result;
}

unint64_t sub_1A5C7F1B4()
{
  result = qword_1EB253AB0;
  if (!qword_1EB253AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253AB0);
  }

  return result;
}

unint64_t sub_1A5C7F20C()
{
  result = qword_1EB253AB8[0];
  if (!qword_1EB253AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253AB8);
  }

  return result;
}

unint64_t sub_1A5C7F264()
{
  result = qword_1EB253B40;
  if (!qword_1EB253B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253B40);
  }

  return result;
}

unint64_t sub_1A5C7F2BC()
{
  result = qword_1EB253B48[0];
  if (!qword_1EB253B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253B48);
  }

  return result;
}

unint64_t sub_1A5C7F314()
{
  result = qword_1EB253BD0;
  if (!qword_1EB253BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253BD0);
  }

  return result;
}

unint64_t sub_1A5C7F36C()
{
  result = qword_1EB253BD8[0];
  if (!qword_1EB253BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253BD8);
  }

  return result;
}

unint64_t sub_1A5C7F3C4()
{
  result = qword_1EB253C60;
  if (!qword_1EB253C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253C60);
  }

  return result;
}

unint64_t sub_1A5C7F41C()
{
  result = qword_1EB253C68[0];
  if (!qword_1EB253C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253C68);
  }

  return result;
}

unint64_t sub_1A5C7F474()
{
  result = qword_1EB253CF0;
  if (!qword_1EB253CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253CF0);
  }

  return result;
}

unint64_t sub_1A5C7F4CC()
{
  result = qword_1EB253CF8[0];
  if (!qword_1EB253CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253CF8);
  }

  return result;
}

unint64_t sub_1A5C7F524()
{
  result = qword_1EB253D80;
  if (!qword_1EB253D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253D80);
  }

  return result;
}

unint64_t sub_1A5C7F57C()
{
  result = qword_1EB253D88[0];
  if (!qword_1EB253D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253D88);
  }

  return result;
}

unint64_t sub_1A5C7F5D4()
{
  result = qword_1EB253E10;
  if (!qword_1EB253E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253E10);
  }

  return result;
}

unint64_t sub_1A5C7F62C()
{
  result = qword_1EB253E18[0];
  if (!qword_1EB253E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253E18);
  }

  return result;
}

unint64_t sub_1A5C7F684()
{
  result = qword_1EB253EA0;
  if (!qword_1EB253EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253EA0);
  }

  return result;
}

unint64_t sub_1A5C7F6DC()
{
  result = qword_1EB253EA8[0];
  if (!qword_1EB253EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253EA8);
  }

  return result;
}

unint64_t sub_1A5C7F734()
{
  result = qword_1EB253F30;
  if (!qword_1EB253F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253F30);
  }

  return result;
}

unint64_t sub_1A5C7F78C()
{
  result = qword_1EB253F38[0];
  if (!qword_1EB253F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253F38);
  }

  return result;
}

unint64_t sub_1A5C7F7E4()
{
  result = qword_1EB253FC0;
  if (!qword_1EB253FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB253FC0);
  }

  return result;
}

unint64_t sub_1A5C7F83C()
{
  result = qword_1EB253FC8[0];
  if (!qword_1EB253FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB253FC8);
  }

  return result;
}

unint64_t sub_1A5C7F894()
{
  result = qword_1EB254050;
  if (!qword_1EB254050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254050);
  }

  return result;
}

unint64_t sub_1A5C7F8EC()
{
  result = qword_1EB254058[0];
  if (!qword_1EB254058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254058);
  }

  return result;
}

unint64_t sub_1A5C7F944()
{
  result = qword_1EB2540E0;
  if (!qword_1EB2540E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2540E0);
  }

  return result;
}

unint64_t sub_1A5C7F99C()
{
  result = qword_1EB2540E8[0];
  if (!qword_1EB2540E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2540E8);
  }

  return result;
}

unint64_t sub_1A5C7F9F4()
{
  result = qword_1EB254170;
  if (!qword_1EB254170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254170);
  }

  return result;
}

unint64_t sub_1A5C7FA4C()
{
  result = qword_1EB254178;
  if (!qword_1EB254178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254178);
  }

  return result;
}

unint64_t sub_1A5C7FAA4()
{
  result = qword_1EB254200;
  if (!qword_1EB254200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254200);
  }

  return result;
}

unint64_t sub_1A5C7FAFC()
{
  result = qword_1EB254208[0];
  if (!qword_1EB254208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254208);
  }

  return result;
}

unint64_t sub_1A5C7FB54()
{
  result = qword_1EB254290;
  if (!qword_1EB254290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254290);
  }

  return result;
}

unint64_t sub_1A5C7FBAC()
{
  result = qword_1EB254298[0];
  if (!qword_1EB254298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254298);
  }

  return result;
}

unint64_t sub_1A5C7FC04()
{
  result = qword_1EB254320;
  if (!qword_1EB254320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254320);
  }

  return result;
}

unint64_t sub_1A5C7FC5C()
{
  result = qword_1EB254328[0];
  if (!qword_1EB254328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254328);
  }

  return result;
}

unint64_t sub_1A5C7FCB4()
{
  result = qword_1EB2543B0;
  if (!qword_1EB2543B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2543B0);
  }

  return result;
}

unint64_t sub_1A5C7FD0C()
{
  result = qword_1EB2543B8[0];
  if (!qword_1EB2543B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2543B8);
  }

  return result;
}

unint64_t sub_1A5C7FD64()
{
  result = qword_1EB254440;
  if (!qword_1EB254440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254440);
  }

  return result;
}

unint64_t sub_1A5C7FDBC()
{
  result = qword_1EB254448[0];
  if (!qword_1EB254448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254448);
  }

  return result;
}

unint64_t sub_1A5C7FE14()
{
  result = qword_1EB2544D0;
  if (!qword_1EB2544D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2544D0);
  }

  return result;
}

unint64_t sub_1A5C7FE6C()
{
  result = qword_1EB2544D8[0];
  if (!qword_1EB2544D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2544D8);
  }

  return result;
}

unint64_t sub_1A5C7FEC4()
{
  result = qword_1EB254560;
  if (!qword_1EB254560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254560);
  }

  return result;
}

unint64_t sub_1A5C7FF1C()
{
  result = qword_1EB254568[0];
  if (!qword_1EB254568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254568);
  }

  return result;
}

unint64_t sub_1A5C7FF74()
{
  result = qword_1EB2545F0;
  if (!qword_1EB2545F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2545F0);
  }

  return result;
}

unint64_t sub_1A5C7FFCC()
{
  result = qword_1EB2545F8[0];
  if (!qword_1EB2545F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2545F8);
  }

  return result;
}

unint64_t sub_1A5C80024()
{
  result = qword_1EB254680;
  if (!qword_1EB254680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254680);
  }

  return result;
}

unint64_t sub_1A5C8007C()
{
  result = qword_1EB254688[0];
  if (!qword_1EB254688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254688);
  }

  return result;
}

unint64_t sub_1A5C800D4()
{
  result = qword_1EB254710;
  if (!qword_1EB254710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254710);
  }

  return result;
}

unint64_t sub_1A5C8012C()
{
  result = qword_1EB254718[0];
  if (!qword_1EB254718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254718);
  }

  return result;
}

unint64_t sub_1A5C80184()
{
  result = qword_1EB2547A0;
  if (!qword_1EB2547A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2547A0);
  }

  return result;
}

unint64_t sub_1A5C801DC()
{
  result = qword_1EB2547A8[0];
  if (!qword_1EB2547A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2547A8);
  }

  return result;
}

unint64_t sub_1A5C80234()
{
  result = qword_1EB254830;
  if (!qword_1EB254830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254830);
  }

  return result;
}

unint64_t sub_1A5C8028C()
{
  result = qword_1EB254838[0];
  if (!qword_1EB254838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254838);
  }

  return result;
}

unint64_t sub_1A5C802E4()
{
  result = qword_1EB2548C0;
  if (!qword_1EB2548C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2548C0);
  }

  return result;
}

unint64_t sub_1A5C8033C()
{
  result = qword_1EB2548C8[0];
  if (!qword_1EB2548C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2548C8);
  }

  return result;
}

unint64_t sub_1A5C80394()
{
  result = qword_1EB254950;
  if (!qword_1EB254950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254950);
  }

  return result;
}

unint64_t sub_1A5C803EC()
{
  result = qword_1EB254958[0];
  if (!qword_1EB254958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254958);
  }

  return result;
}

unint64_t sub_1A5C80444()
{
  result = qword_1EB2549E0;
  if (!qword_1EB2549E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2549E0);
  }

  return result;
}

unint64_t sub_1A5C8049C()
{
  result = qword_1EB2549E8[0];
  if (!qword_1EB2549E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2549E8);
  }

  return result;
}

unint64_t sub_1A5C804F4()
{
  result = qword_1EB254A70;
  if (!qword_1EB254A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254A70);
  }

  return result;
}

unint64_t sub_1A5C8054C()
{
  result = qword_1EB254A78;
  if (!qword_1EB254A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254A78);
  }

  return result;
}

unint64_t sub_1A5C805A4()
{
  result = qword_1EB254B00;
  if (!qword_1EB254B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254B00);
  }

  return result;
}

unint64_t sub_1A5C805FC()
{
  result = qword_1EB254B08[0];
  if (!qword_1EB254B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254B08);
  }

  return result;
}

unint64_t sub_1A5C80654()
{
  result = qword_1EB254B90;
  if (!qword_1EB254B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254B90);
  }

  return result;
}

unint64_t sub_1A5C806AC()
{
  result = qword_1EB254B98[0];
  if (!qword_1EB254B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254B98);
  }

  return result;
}

unint64_t sub_1A5C80704()
{
  result = qword_1EB254C20;
  if (!qword_1EB254C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254C20);
  }

  return result;
}

unint64_t sub_1A5C8075C()
{
  result = qword_1EB254C28[0];
  if (!qword_1EB254C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254C28);
  }

  return result;
}

unint64_t sub_1A5C807B4()
{
  result = qword_1EB254CB0;
  if (!qword_1EB254CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254CB0);
  }

  return result;
}

unint64_t sub_1A5C8080C()
{
  result = qword_1EB254CB8[0];
  if (!qword_1EB254CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254CB8);
  }

  return result;
}

unint64_t sub_1A5C80864()
{
  result = qword_1EB254D40;
  if (!qword_1EB254D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254D40);
  }

  return result;
}

unint64_t sub_1A5C808BC()
{
  result = qword_1EB254D48[0];
  if (!qword_1EB254D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254D48);
  }

  return result;
}

unint64_t sub_1A5C80914()
{
  result = qword_1EB254DD0;
  if (!qword_1EB254DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254DD0);
  }

  return result;
}

unint64_t sub_1A5C8096C()
{
  result = qword_1EB254DD8[0];
  if (!qword_1EB254DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254DD8);
  }

  return result;
}

unint64_t sub_1A5C809C4()
{
  result = qword_1EB254E60;
  if (!qword_1EB254E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254E60);
  }

  return result;
}

unint64_t sub_1A5C80A1C()
{
  result = qword_1EB254E68[0];
  if (!qword_1EB254E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254E68);
  }

  return result;
}

unint64_t sub_1A5C80A74()
{
  result = qword_1EB254EF0;
  if (!qword_1EB254EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254EF0);
  }

  return result;
}

unint64_t sub_1A5C80ACC()
{
  result = qword_1EB254EF8[0];
  if (!qword_1EB254EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254EF8);
  }

  return result;
}

unint64_t sub_1A5C80B24()
{
  result = qword_1EB254F80;
  if (!qword_1EB254F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB254F80);
  }

  return result;
}

unint64_t sub_1A5C80B7C()
{
  result = qword_1EB254F88[0];
  if (!qword_1EB254F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB254F88);
  }

  return result;
}

unint64_t sub_1A5C80BD4()
{
  result = qword_1EB255010;
  if (!qword_1EB255010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255010);
  }

  return result;
}

unint64_t sub_1A5C80C2C()
{
  result = qword_1EB255018[0];
  if (!qword_1EB255018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255018);
  }

  return result;
}

unint64_t sub_1A5C80C84()
{
  result = qword_1EB2550A0;
  if (!qword_1EB2550A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2550A0);
  }

  return result;
}

unint64_t sub_1A5C80CDC()
{
  result = qword_1EB2550A8[0];
  if (!qword_1EB2550A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2550A8);
  }

  return result;
}

unint64_t sub_1A5C80D34()
{
  result = qword_1EB255130;
  if (!qword_1EB255130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255130);
  }

  return result;
}

unint64_t sub_1A5C80D8C()
{
  result = qword_1EB255138[0];
  if (!qword_1EB255138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255138);
  }

  return result;
}

unint64_t sub_1A5C80DE4()
{
  result = qword_1EB2551C0;
  if (!qword_1EB2551C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2551C0);
  }

  return result;
}

unint64_t sub_1A5C80E3C()
{
  result = qword_1EB2551C8[0];
  if (!qword_1EB2551C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2551C8);
  }

  return result;
}

unint64_t sub_1A5C80E94()
{
  result = qword_1EB255250;
  if (!qword_1EB255250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255250);
  }

  return result;
}

unint64_t sub_1A5C80EEC()
{
  result = qword_1EB255258[0];
  if (!qword_1EB255258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255258);
  }

  return result;
}

unint64_t sub_1A5C80F44()
{
  result = qword_1EB2552E0;
  if (!qword_1EB2552E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2552E0);
  }

  return result;
}

unint64_t sub_1A5C80F9C()
{
  result = qword_1EB2552E8[0];
  if (!qword_1EB2552E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2552E8);
  }

  return result;
}

unint64_t sub_1A5C80FF4()
{
  result = qword_1EB255370;
  if (!qword_1EB255370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255370);
  }

  return result;
}

unint64_t sub_1A5C8104C()
{
  result = qword_1EB255378;
  if (!qword_1EB255378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255378);
  }

  return result;
}

unint64_t sub_1A5C810A4()
{
  result = qword_1EB255400;
  if (!qword_1EB255400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255400);
  }

  return result;
}

unint64_t sub_1A5C810FC()
{
  result = qword_1EB255408[0];
  if (!qword_1EB255408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255408);
  }

  return result;
}

unint64_t sub_1A5C81154()
{
  result = qword_1EB255490;
  if (!qword_1EB255490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255490);
  }

  return result;
}

unint64_t sub_1A5C811AC()
{
  result = qword_1EB255498[0];
  if (!qword_1EB255498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255498);
  }

  return result;
}

unint64_t sub_1A5C81204()
{
  result = qword_1EB255520;
  if (!qword_1EB255520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255520);
  }

  return result;
}

unint64_t sub_1A5C8125C()
{
  result = qword_1EB255528[0];
  if (!qword_1EB255528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255528);
  }

  return result;
}

unint64_t sub_1A5C812B4()
{
  result = qword_1EB2555B0;
  if (!qword_1EB2555B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2555B0);
  }

  return result;
}

unint64_t sub_1A5C8130C()
{
  result = qword_1EB2555B8[0];
  if (!qword_1EB2555B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2555B8);
  }

  return result;
}

unint64_t sub_1A5C81364()
{
  result = qword_1EB255640;
  if (!qword_1EB255640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255640);
  }

  return result;
}

unint64_t sub_1A5C813BC()
{
  result = qword_1EB255648[0];
  if (!qword_1EB255648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255648);
  }

  return result;
}

unint64_t sub_1A5C81414()
{
  result = qword_1EB2556D0;
  if (!qword_1EB2556D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2556D0);
  }

  return result;
}

unint64_t sub_1A5C8146C()
{
  result = qword_1EB2556D8[0];
  if (!qword_1EB2556D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2556D8);
  }

  return result;
}

unint64_t sub_1A5C814C4()
{
  result = qword_1EB255760;
  if (!qword_1EB255760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255760);
  }

  return result;
}

unint64_t sub_1A5C8151C()
{
  result = qword_1EB255768[0];
  if (!qword_1EB255768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255768);
  }

  return result;
}

unint64_t sub_1A5C81574()
{
  result = qword_1EB2557F0;
  if (!qword_1EB2557F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2557F0);
  }

  return result;
}

unint64_t sub_1A5C815CC()
{
  result = qword_1EB2557F8[0];
  if (!qword_1EB2557F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2557F8);
  }

  return result;
}

unint64_t sub_1A5C81624()
{
  result = qword_1EB255880;
  if (!qword_1EB255880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255880);
  }

  return result;
}

unint64_t sub_1A5C8167C()
{
  result = qword_1EB255888[0];
  if (!qword_1EB255888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255888);
  }

  return result;
}

unint64_t sub_1A5C816D4()
{
  result = qword_1EB255910;
  if (!qword_1EB255910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255910);
  }

  return result;
}

unint64_t sub_1A5C8172C()
{
  result = qword_1EB255918[0];
  if (!qword_1EB255918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255918);
  }

  return result;
}

unint64_t sub_1A5C81784()
{
  result = qword_1EB2559A0;
  if (!qword_1EB2559A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2559A0);
  }

  return result;
}

unint64_t sub_1A5C817DC()
{
  result = qword_1EB2559A8[0];
  if (!qword_1EB2559A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2559A8);
  }

  return result;
}

uint64_t sub_1A5C81830(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001A6057F00 == a2;
  if (v3 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6057F20 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A6057F40 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001A6057F60 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65524C4D65726F63 && a2 == 0xED00007473657571 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A6057F90 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A6057FB0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A6057FD0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A6057FF0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A6058020 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A6058040 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A6058060 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A6058080 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A60580A0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A60580C0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A60580E0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A6058100 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A6058120 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A6058140 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001A6058160 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A6058190 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001A60581C0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001A60581F0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A6058220 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A6058250 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A6058280 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A60582A0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A60582C0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001A60582E0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A6058310 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A6058330 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A6058350 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001A6058370 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A60583A0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A60583C0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A60583E0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A6058400 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A6058420 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001A6058440 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A6058470 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A6058490 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A60584B0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A60584D0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A60584F0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A6058510 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A6058530 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A6058550 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A6058570 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A60585A0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A60585C0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A60585E0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A6058600 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A6058630 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A6058650 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A6058680 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A60586A0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A60586D0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A60586F0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001A6058720 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A6058750 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A6058770 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6058790 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A60587B0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A60587E0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001A6058800 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A6058830 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A6058850 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A6058870 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A6058890 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A60588B0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A60588D0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A60588F0 == a2)
  {

    return 71;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 71;
    }

    else
    {
      return 72;
    }
  }
}

uint64_t S1vLyVSh30UQ26TGBoV8MHvObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation()
{
  result = qword_1EB255DC0;
  if (!qword_1EB255DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 S1vLyVSh30UQ26TGBoV8MHvObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation() + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t S1vLyVSh30UQ26TGBoV8MHvObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  *a1 = *(v1 + *(result + 28));
  return result;
}

Swift::OpaquePointer_optional __swiftcall S1vLyVSh30UQ26TGBoV8MHvObservation.adjustment(for:)(Vision::S1JC7R3k4455fKQz0dY1VhQRequest::AdjustmentKey a1)
{
  v2 = a1;
  if (*(*(v1 + *(type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation() + 32)) + 16) && (sub_1A5C8425C(*v2), v3))
  {
  }

  else
  {
    v4 = 0;
  }

  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

void *S1vLyVSh30UQ26TGBoV8MHvObservation.allAdjustmentKeys.getter()
{
  v1 = *(v0 + *(type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation() + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A5C84780(*(v1 + 16), 0);
  v4 = sub_1A5B2E2F8(&v6, v3 + 32, v2, v1);

  sub_1A5B2E3F4();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t S1vLyVSh30UQ26TGBoV8MHvObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000036, 0x80000001A6058910);
  S1vLyVSh30UQ26TGBoV8MHvObservation.allAdjustmentKeys.getter();
  v0 = MEMORY[0x1AC554750]();
  v2 = v1;

  MEMORY[0x1AC554600](v0, v2);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v3 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  v4 = sub_1A5C84E24(&qword_1EB1F3DF0, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
  v5 = sub_1A5C29408(v3, &off_1F19659F0, v4);
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1A5C83138(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    result = sub_1A5C8425C(v13);
    if ((v15 & 1) == 0 || (v16 = *(*(a2 + 56) + 8 * result), v17 = *(v16 + 16), v17 != *(v14 + 16)))
    {
LABEL_27:

      return 0;
    }

    if (v17)
    {
      v18 = v16 == v14;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = (v16 + 32);
      v20 = (v14 + 32);
      while (v17)
      {
        if (*v19 != *v20)
        {
          goto LABEL_27;
        }

        ++v19;
        ++v20;
        if (!--v17)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_30;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t S1vLyVSh30UQ26TGBoV8MHvObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  sub_1A5C84E24(&qword_1EB1F3DF8, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C83334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5C84E24(&qword_1EB1F3DF0, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5C833B8()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x746176726573626FLL;
  }
}

uint64_t sub_1A5C83400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A6058950 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C834E8(uint64_t a1)
{
  v2 = sub_1A5C84934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C83524(uint64_t a1)
{
  v2 = sub_1A5C84934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t S1vLyVSh30UQ26TGBoV8MHvObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C84934();
  sub_1A5FD4CDC();
  v12 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  v20 = *(v3 + *(v12 + 32));
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E08);
  sub_1A5C84988();
  sub_1A5FD4A5C();
  if (!v2)
  {
    v18 = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v13 = sub_1A5C84E24(&qword_1EB1F3DF0, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
    sub_1A5BBD46C(v7, v12, &off_1F19659F0, v13);
    (*(v16 + 8))(v7, v17);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t S1vLyVSh30UQ26TGBoV8MHvObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v36 = sub_1A5FD367C();
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E30);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A5C84934();
  v14 = v37;
  sub_1A5FD4CCC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v37 = v10;
  v29 = v4;
  v30 = v6;
  v16 = v34;
  v15 = v35;
  v17 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E08);
  v39 = 1;
  sub_1A5C84A8C();
  v18 = v9;
  sub_1A5FD497C();
  v19 = v42;
  *&v12[v37[8]] = v42;
  LOBYTE(v42) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v27 = v19;
  v28 = v18;
  LOBYTE(v42) = 0;
  sub_1A5C84E24(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  (*(v32 + 32))(v12, v15, v17);
  LOBYTE(v42) = 1;
  sub_1A5FD495C();
  *&v12[v37[5]] = v20;
  v39 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v21 = v33;
  v22 = v37;
  *&v12[v37[7]] = v42;
  v23 = v30;
  sub_1A5BBDB04(v40);
  (*(v21 + 8))(v23, v29);
  (*(v16 + 8))(v28, v7);
  v24 = &v12[v22[6]];
  v25 = v40[1];
  *v24 = v40[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v40[2];
  v24[48] = v41;
  sub_1A5C84BFC(v12, v31);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1A5C84C60(v12);
}

int *sub_1A5C83DE8@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = [a1 adjustmentKeys];
  v9 = sub_1A5FD3F4C();

  v10 = 0;
  v53 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC8];
  v54 = v9;
  v12 = v9 + 40;
  v52 = v9 + 40;
LABEL_2:
  v13 = (v12 + 16 * v10);
  while (v53 != v10)
  {
    if (v10 >= *(v54 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v15 = *(v13 - 1);
    v14 = *v13;
    swift_bridgeObjectRetain_n();
    v16._countAndFlagsBits = v15;
    v16._object = v14;
    S1JC7R3k4455fKQz0dY1VhQRequest.AdjustmentKey.init(rawValue:)(v16);
    v17 = v56;
    if (v56 == 9)
    {
      goto LABEL_36;
    }

    ++v10;
    v13 += 2;
    v18 = sub_1A5FD3D2C();

    v19 = [v5 adjustmentValuesForKey_];

    if (v19)
    {
      v50 = v5;
      v51 = v11;
      sub_1A5C84CBC();
      v20 = sub_1A5FD3F4C();

      if (v20 >> 62)
      {
        v21 = sub_1A5FD484C();
        if (!v21)
        {
          goto LABEL_19;
        }

LABEL_9:
        v56 = MEMORY[0x1E69E7CC0];
        sub_1A5C3FA14(0, v21 & ~(v21 >> 63), 0);
        if ((v21 & 0x8000000000000000) == 0)
        {
          v48 = v7;
          v49 = a3;
          v22 = 0;
          v23 = v56;
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x1AC554EE0](v22, v20);
            }

            else
            {
              v24 = *(v20 + 8 * v22 + 32);
            }

            v25 = v24;
            v55 = 0;
            [v24 getValue_];

            v26 = v55;
            v56 = v23;
            v28 = v23[2];
            v27 = v23[3];
            if (v28 >= v27 >> 1)
            {
              sub_1A5C3FA14((v27 > 1), v28 + 1, 1);
              v23 = v56;
            }

            ++v22;
            v23[2] = v28 + 1;
            *(v23 + v28 + 8) = v26;
          }

          while (v21 != v22);

          a3 = v49;
          v7 = v48;
          goto LABEL_20;
        }

        goto LABEL_34;
      }

      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_9;
      }

LABEL_19:

      v23 = MEMORY[0x1E69E7CC0];
LABEL_20:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v51;
      v30 = sub_1A5C8425C(v17);
      v32 = v51[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_33;
      }

      v36 = v31;
      if (v51[3] < v35)
      {
        sub_1A5C8438C(v35, isUniquelyReferenced_nonNull_native);
        v30 = sub_1A5C8425C(v17);
        if ((v36 & 1) != (v37 & 1))
        {
          result = sub_1A5FD4B8C();
          __break(1u);
          return result;
        }

LABEL_25:
        v11 = v56;
        if (v36)
        {
          goto LABEL_26;
        }

LABEL_28:
        v11[(v30 >> 6) + 8] |= 1 << v30;
        *(v11[6] + v30) = v17;
        *(v11[7] + 8 * v30) = v23;
        v39 = v11[2];
        v34 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (!v34)
        {
          v11[2] = v40;
          goto LABEL_30;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v38 = v30;
      sub_1A5C84624();
      v30 = v38;
      v11 = v56;
      if ((v36 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_26:
      *(v11[7] + 8 * v30) = v23;

LABEL_30:
      v5 = v50;
      v12 = v52;
      goto LABEL_2;
    }
  }

  v41 = v5;
  v42 = [v41 uuid];
  sub_1A5FD365C();

  [v41 confidence];
  v44 = v43;

  result = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  *(a4 + result[5]) = v44;
  v45 = a4 + result[6];
  v46 = *(a3 + 16);
  *v45 = *a3;
  *(v45 + 16) = v46;
  *(v45 + 32) = *(a3 + 32);
  *(v45 + 48) = *(a3 + 48);
  *(a4 + result[7]) = v7;
  *(a4 + result[8]) = v11;
  return result;
}

unint64_t sub_1A5C8425C(unsigned __int8 a1)
{
  sub_1A5C85044();
  v1 = sub_1A5FD3CAC();
  return sub_1A5C842C4(a1, v1);
}

unint64_t sub_1A5C842C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A5C04E78();
    do
    {
      if (sub_1A5FD3D0C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A5C8438C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E78);
  v31 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1A5C85044();
      result = sub_1A5FD3CAC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A5C84624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E78);
  v2 = *v0;
  v3 = sub_1A5FD485C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A5C84780(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t _s6Vision34S1vLyVSh30UQ26TGBoV8MHvObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A5FD364C() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    goto LABEL_14;
  }

  v5 = v4[6];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if (v6)
  {
    if (!*(v7 + 48))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(v7 + 48))
    {
      goto LABEL_14;
    }

    v8 = v4;
    v9 = sub_1A5FD42BC();
    v4 = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 <= 0xFFF7)
  {
    if (v12 > 0xFFF7)
    {
      goto LABEL_14;
    }

    v13 = v4;
    sub_1A5B0BB44();
    v14 = sub_1A5FD3D0C();
    v4 = v13;
    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v12 <= 0xFFF7)
  {
LABEL_14:
    v15 = 0;
    return v15 & 1;
  }

  v15 = sub_1A5C83138(*(a1 + v4[8]), *(a2 + v4[8]));
  return v15 & 1;
}

unint64_t sub_1A5C84934()
{
  result = qword_1EB255A30[0];
  if (!qword_1EB255A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255A30);
  }

  return result;
}

unint64_t sub_1A5C84988()
{
  result = qword_1EB1F3E10;
  if (!qword_1EB1F3E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F3E08);
    sub_1A5C84A38();
    sub_1A5C84B90(&qword_1EB1F3E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3E10);
  }

  return result;
}

unint64_t sub_1A5C84A38()
{
  result = qword_1EB1F3E18;
  if (!qword_1EB1F3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3E18);
  }

  return result;
}

unint64_t sub_1A5C84A8C()
{
  result = qword_1EB1F3E38;
  if (!qword_1EB1F3E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F3E08);
    sub_1A5C84B3C();
    sub_1A5C84B90(&qword_1EB1F3E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3E38);
  }

  return result;
}

unint64_t sub_1A5C84B3C()
{
  result = qword_1EB1F3E40;
  if (!qword_1EB1F3E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3E40);
  }

  return result;
}

uint64_t sub_1A5C84B90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F3E28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5C84BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5C84C60(uint64_t a1)
{
  v2 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5C84CBC()
{
  result = qword_1EB1EEFE8;
  if (!qword_1EB1EEFE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1EEFE8);
  }

  return result;
}

uint64_t sub_1A5C84D08(void *a1)
{
  a1[1] = sub_1A5C84E24(&qword_1EB1EF948, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
  a1[2] = sub_1A5C84E24(&qword_1EB1F3E50, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
  a1[3] = sub_1A5C84E24(&qword_1EB1F3E58, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
  result = sub_1A5C84E24(&qword_1EB1F3DF8, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5C84E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C84E6C(uint64_t a1)
{
  result = sub_1A5C84E24(&qword_1EB1F3DF0, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5C84EEC()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5B0AD5C();
    if (v1 <= 0x3F)
    {
      sub_1A5B1217C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5C84FCC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A5C84FCC()
{
  if (!qword_1EB1F3E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F3E28);
    sub_1A5C85044();
    v0 = sub_1A5FD3C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F3E68);
    }
  }
}

unint64_t sub_1A5C85044()
{
  result = qword_1EB1F3E70;
  if (!qword_1EB1F3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3E70);
  }

  return result;
}

unint64_t sub_1A5C850AC()
{
  result = qword_1EB255ED0[0];
  if (!qword_1EB255ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255ED0);
  }

  return result;
}

unint64_t sub_1A5C85104()
{
  result = qword_1EB255FE0;
  if (!qword_1EB255FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB255FE0);
  }

  return result;
}

unint64_t sub_1A5C8515C()
{
  result = qword_1EB255FE8[0];
  if (!qword_1EB255FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB255FE8);
  }

  return result;
}

uint64_t VNFaceLandmarkRegion2D.normalizedPoints.getter()
{
  v1 = [v0 normalizedPoints];
  result = [v0 pointCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_1A5C869A4(result, 0);
    memcpy(v4 + 4, v1, 16 * v3);
    return v4;
  }

  return result;
}

uint64_t VNFaceLandmarkRegion2D.pointsInImage(imageSize:)(double a1, double a2)
{
  v3 = [v2 pointsInImageOfSize_];
  result = [v2 pointCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = result;
    v6 = sub_1A5C869A4(result, 0);
    memcpy(v6 + 4, v3, 16 * v5);
    return v6;
  }

  return result;
}

char *VNFaceLandmarkRegion2D.precisionEstimatesPerPoint.getter()
{
  v1 = [v0 precisionEstimatesPerPoint];
  if (!v1)
  {
    return v1;
  }

  sub_1A5B16F58(0, &qword_1EB1F3E80);
  v2 = sub_1A5FD3F4C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v3 = sub_1A5FD484C();
  if (!v3)
  {
LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1A5C3FA14(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v1 = v12;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC554EE0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      [v6 floatValue];
      v9 = v8;

      v11 = v12[2];
      v10 = v12[3];
      if (v11 >= v10 >> 1)
      {
        sub_1A5C3FA14((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      v12[2] = v11 + 1;
      *(v12 + v11 + 8) = v9;
    }

    while (v3 != v5);

    return v1;
  }

  __break(1u);
  return result;
}

unint64_t VNFaceObservation.faceCaptureQuality.getter()
{
  v1 = [v0 faceCaptureQuality];
  v2 = v1;
  if (v1)
  {
    [v1 floatValue];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v2 == 0) << 32);
}

id VNRecognizedText.boundingBox(for:)(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[1] = a2;
  v3 = [v2 string];
  sub_1A5FD3D5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEFD8);
  sub_1A5B32200();
  sub_1A5B32264();
  v4 = sub_1A5FD44BC();
  v9[0] = 0;
  v6 = [v2 boundingBoxForRange:v4 error:{v5, v9}];
  v7 = v9[0];
  if (v9[0])
  {
    swift_willThrow();
    v7;
  }

  return v6;
}

void *VNContour.normalizedPoints.getter()
{
  v1 = [v0 normalizedPoints];
  v2 = [v0 pointCount];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = sub_1A5C86A28(v2, 0);
  memcpy(v4 + 4, v1, 8 * v3);
  return v4;
}

id sub_1A5C85774(SEL *a1, void (*a2)(void))
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v4 = [v2 *a1];
  v5 = v10[0];
  if (v4)
  {
    v6 = v4;
    a2(0);
    v7 = sub_1A5FD3F4C();
    v8 = v5;
  }

  else
  {
    v7 = v10[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v7;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VNHumanBodyPose3DObservation.cameraRelativePosition(_:)(simd_float4x4 *__return_ptr retstr, VNHumanBodyPose3DObservationJointName a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  if ([v2 getCameraRelativePosition:v8 forJointName:a2 error:&v7])
  {
    v3 = v7;
  }

  else
  {
    v4 = v7;
    v5 = sub_1A5FD348C();

    swift_willThrow();
    v7 = v5;
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
    sub_1A5B16F58(0, &qword_1EB1EF6D0);
    if (swift_dynamicCast())
    {

      swift_willThrow();
    }
  }
}

void *VNRequest.supportedComputeStageDevices.getter()
{
  v64[1] = *MEMORY[0x1E69E9840];
  v63 = sub_1A5FD3B5C();
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v53 = &v50 - v8;
  v64[0] = 0;
  v9 = [v0 supportedComputeStageDevicesAndReturnError_];
  v10 = v64[0];
  if (v9)
  {
    v11 = v9;
    v52 = v1;
    type metadata accessor for VNComputeStage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F13B0);
    sub_1A5C86B10(&qword_1EB1EE600, type metadata accessor for VNComputeStage);
    v12 = sub_1A5FD3C0C();
    v13 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3EA0);
    v14 = sub_1A5FD485C();
    v2 = v14;
    v15 = 0;
    v16 = *(v12 + 64);
    v54 = v12 + 64;
    v17 = 1 << *(v12 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v62 = v3 + 32;
    v57 = v12;
    v58 = v14 + 64;
    v55 = v20;
    v56 = v14;
    if ((v18 & v16) != 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v24 = *(v54 + 8 * v15);
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        while (2)
        {
          v25 = v21 | (v15 << 6);
          v26 = *(v12 + 56);
          v27 = *(*(v12 + 48) + 8 * v25);
          v61 = v25;
          v28 = *(v26 + 8 * v25);
          if (v28 >> 62)
          {
            v41 = v27;
            v42 = sub_1A5FD484C();
            v27 = v41;
            v29 = v42;
            v60 = v22;
            if (!v42)
            {
              goto LABEL_27;
            }

LABEL_13:
            v64[0] = MEMORY[0x1E69E7CC0];
            v59 = v27;
            v30 = v27;

            sub_1A5B53F20(0, v29 & ~(v29 >> 63), 0);
            if ((v29 & 0x8000000000000000) == 0)
            {
              v31 = v64[0];
              if ((v28 & 0xC000000000000001) != 0)
              {
                v32 = 0;
                do
                {
                  MEMORY[0x1AC554EE0](v32, v28);
                  sub_1A5FD3B4C();
                  v64[0] = v31;
                  v33 = v5;
                  v35 = v31[2];
                  v34 = v31[3];
                  if (v35 >= v34 >> 1)
                  {
                    sub_1A5B53F20(v34 > 1, v35 + 1, 1);
                    v31 = v64[0];
                  }

                  ++v32;
                  v31[2] = v35 + 1;
                  (*(v3 + 32))(v31 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35, v33, v63);
                  v5 = v33;
                }

                while (v29 != v32);
              }

              else
              {
                v51 = v5;
                v36 = 32;
                v37 = v53;
                do
                {
                  swift_unknownObjectRetain();
                  sub_1A5FD3B4C();
                  v64[0] = v31;
                  v39 = v31[2];
                  v38 = v31[3];
                  if (v39 >= v38 >> 1)
                  {
                    sub_1A5B53F20(v38 > 1, v39 + 1, 1);
                    v31 = v64[0];
                  }

                  v31[2] = v39 + 1;
                  (*(v3 + 32))(v31 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39, v37, v63);
                  v36 += 8;
                  --v29;
                }

                while (v29);

                v5 = v51;
              }

              v2 = v56;
              v12 = v57;
              v20 = v55;
              v40 = v59;
              goto LABEL_28;
            }
          }

          else
          {
            v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v60 = v22;
            if (v29)
            {
              goto LABEL_13;
            }

LABEL_27:
            v40 = v27;
            v43 = v27;
            v31 = MEMORY[0x1E69E7CC0];
LABEL_28:
            v44 = v61;
            *(v58 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
            *(v2[6] + 8 * v44) = v40;
            *(v2[7] + 8 * v44) = v31;
            v45 = v2[2];
            v46 = __OFADD__(v45, 1);
            v47 = v45 + 1;
            if (!v46)
            {
              v2[2] = v47;
              v19 = v60;
              if (!v60)
              {
                goto LABEL_6;
              }

LABEL_5:
              v21 = __clz(__rbit64(v19));
              v22 = (v19 - 1) & v19;
              continue;
            }

LABEL_35:
            __break(1u);
          }

          break;
        }

        __break(1u);
      }
    }
  }

  else
  {
    v48 = v64[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v2;
}

uint64_t VNRequest.computeDevice(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ([v2 computeDeviceForComputeStage_])
  {
    sub_1A5FD3B4C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1A5FD3B5C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t VNRequest.setComputeDevice(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1A5B18ED0(a1, &v13 - v7);
  v9 = sub_1A5FD3B5C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A5B18F40(v8);
    v11 = 0;
  }

  else
  {
    v11 = sub_1A5FD3B2C();
    (*(v10 + 8))(v8, v9);
  }

  [v3 setComputeDevice:v11 forComputeStage:a2];
  return swift_unknownObjectRelease();
}

uint64_t sub_1A5C863F4(uint64_t a1)
{
  v2 = sub_1A5C86B10(&qword_1EB1F4028, _s3__C15JointsGroupNameVMa_2);
  v3 = sub_1A5C86B10(&unk_1EB1F4030, _s3__C15JointsGroupNameVMa_2);
  v4 = sub_1A5C86B10(&qword_1EB1F3FC8, type metadata accessor for VNRecognizedPointGroupKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A5C864E4(uint64_t a1)
{
  v2 = sub_1A5C86B10(&qword_1EB1F4018, _s3__C9JointNameVMa_2);
  v3 = sub_1A5C86B10(&qword_1EB1F4020, _s3__C9JointNameVMa_2);
  v4 = sub_1A5C86B10(&qword_1EB1F3FE0, type metadata accessor for VNRecognizedPointKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A5C865D4(uint64_t a1)
{
  v2 = sub_1A5C86B10(&qword_1EB1F4008, _s3__C15JointsGroupNameVMa_1);
  v3 = sub_1A5C86B10(&qword_1EB1F4010, _s3__C15JointsGroupNameVMa_1);
  v4 = sub_1A5C86B10(&qword_1EB1F3FC8, type metadata accessor for VNRecognizedPointGroupKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A5C866C4(uint64_t a1)
{
  v2 = sub_1A5C86B10(&qword_1EB1F3FE8, _s3__C15JointsGroupNameVMa_0);
  v3 = sub_1A5C86B10(&unk_1EB1F3FF0, _s3__C15JointsGroupNameVMa_0);
  v4 = sub_1A5C86B10(&qword_1EB1F3FC8, type metadata accessor for VNRecognizedPointGroupKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A5C867B4(uint64_t a1)
{
  v2 = sub_1A5C86B10(&qword_1EB1F3FB8, type metadata accessor for JointsGroupName);
  v3 = sub_1A5C86B10(&qword_1EB1F3FC0, type metadata accessor for JointsGroupName);
  v4 = sub_1A5C86B10(&qword_1EB1F3FC8, type metadata accessor for VNRecognizedPointGroupKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A5C868A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1A5FD3D5C();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_1A5C868E8(uint64_t a1)
{
  v2 = sub_1A5C86B10(&qword_1EB1F3FC8, type metadata accessor for VNRecognizedPointGroupKey);
  v3 = sub_1A5C86B10(&qword_1EB1F40B0, type metadata accessor for VNRecognizedPointGroupKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1A5C869A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4060);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A5C86A28(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4050);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_1A5C86B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C870E8(uint64_t a1)
{
  v2 = sub_1A5C87670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C87124(uint64_t a1)
{
  v2 = sub_1A5C87670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C87160()
{
  if (*v0)
  {
    return 0x3576444F4E41;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1A5C8719C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697369766572 && a2 == 0xE900000000000032;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x3576444F4E41 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C8727C(uint64_t a1)
{
  v2 = sub_1A5C8761C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C872B8(uint64_t a1)
{
  v2 = sub_1A5C8761C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C872F4(uint64_t a1)
{
  v2 = sub_1A5C876C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C87330(uint64_t a1)
{
  v2 = sub_1A5C876C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeAnimalsRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F40B8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F40C0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F40C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C8761C();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C87670();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C876C4();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5C8761C()
{
  result = qword_1EB257410;
  if (!qword_1EB257410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB257410);
  }

  return result;
}

unint64_t sub_1A5C87670()
{
  result = qword_1EB257418;
  if (!qword_1EB257418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB257418);
  }

  return result;
}

unint64_t sub_1A5C876C4()
{
  result = qword_1EB257420[0];
  if (!qword_1EB257420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB257420);
  }

  return result;
}

uint64_t RecognizeAnimalsRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeAnimalsRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F40D0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F40D8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F40E0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C8761C();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for RecognizeAnimalsRequest.Revision;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5C87670();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C876C4();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t RecognizeAnimalsRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 2 && (sub_1A5C88B60(), result = sub_1A5D4E900(), LOBYTE(v3) = v7, v7 == 2))
  {
    __break(1u);
  }

  else
  {
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    a2[2].n128_u8[0] = v3 & 1;
    a2[2].n128_u64[1] = v5;
  }

  return result;
}

Vision::RecognizeAnimalsRequest::Animal_optional __swiftcall RecognizeAnimalsRequest.Animal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RecognizeAnimalsRequest.Animal.rawValue.getter()
{
  if (*v0)
  {
    return 7627075;
  }

  else
  {
    return 6778692;
  }
}