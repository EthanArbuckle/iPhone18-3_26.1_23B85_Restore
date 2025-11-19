void sub_23F193624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  sub_23F08B948(va);
  _Unwind_Resume(a1);
}

void sub_23F1945A0(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      v704 = &unk_28517DD38;
      sub_23F08C868(a3, &v705);
      v4 = *a2;
      v5 = v708;
      v6 = v705;
      if (!v705)
      {
        goto LABEL_934;
      }

      v7 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v705;
        v8 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v6 + 96))(&v718);
      }

      else
      {
LABEL_934:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v579 = v709;
      if (!v709)
      {
        break;
      }

      v580 = v711;
      v581 = v707;
      if (v712 == 1 && v707)
      {
        v582 = v705;
        v583 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v583->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v584 = v582;
            (v583->__on_zero_shared)(v583);
            std::__shared_weak_count::__release_weak(v583);
            v582 = v584;
          }
        }

        (*(*v582 + 88))(v582, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v581 = v707;
      }

      v585 = v579 - 1;
      if (v579 == 1)
      {
        goto LABEL_949;
      }

      if (v5)
      {
        v586 = 0;
        do
        {
          v587 = v5;
          v588 = v581;
          do
          {
            (*(*v4 + 80))(v4, v588);
            v588 = (v588 + 1);
            --v587;
          }

          while (v587);
          v581 = (v581 + v580);
          ++v586;
        }

        while (v586 != v585);
LABEL_949:
        if (v5)
        {
          do
          {
            (*(*v4 + 80))(v4, v581);
            v581 = (v581 + 1);
            --v5;
          }

          while (v5);
        }
      }

      break;
    case 2:
      v704 = &unk_28517DFB0;
      sub_23F08DA84(a3, &v705);
      v178 = *a2;
      v179 = v708;
      v180 = v705;
      if (!v705)
      {
        goto LABEL_915;
      }

      v181 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v705;
        v182 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v180 + 96))(&v718);
      }

      else
      {
LABEL_915:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v568 = v709;
      if (!v709)
      {
        break;
      }

      v569 = v711;
      v570 = v707;
      if (v712 == 1 && v707)
      {
        v571 = v705;
        v572 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v572->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v573 = v571;
            (v572->__on_zero_shared)(v572);
            std::__shared_weak_count::__release_weak(v572);
            v571 = v573;
          }
        }

        (*(*v571 + 88))(v571, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v570 = v707;
      }

      v574 = v568 - 1;
      if (v568 == 1)
      {
        goto LABEL_930;
      }

      if (v179)
      {
        v575 = 0;
        do
        {
          v576 = 2 * v179;
          v577 = v570;
          do
          {
            (*(*v178 + 96))(v178, v577++);
            v576 -= 2;
          }

          while (v576);
          v570 += v569;
          ++v575;
        }

        while (v575 != v574);
LABEL_930:
        if (v179)
        {
          v578 = 2 * v179;
          do
          {
            (*(*v178 + 96))(v178, v570++);
            v578 -= 2;
          }

          while (v578);
        }
      }

      break;
    case 3:
      v704 = &unk_285181F28;
      sub_23F12B4EC(a3, &v705);
      v172 = *a2;
      v173 = v708;
      v174 = v705;
      if (!v705)
      {
        goto LABEL_896;
      }

      v175 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v705;
        v176 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v174 + 96))(&v718);
      }

      else
      {
LABEL_896:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v557 = v709;
      if (!v709)
      {
        break;
      }

      v558 = v711;
      v559 = v707;
      if (v712 == 1 && v707)
      {
        v560 = v705;
        v561 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v561->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v562 = v560;
            (v561->__on_zero_shared)(v561);
            std::__shared_weak_count::__release_weak(v561);
            v560 = v562;
          }
        }

        (*(*v560 + 88))(v560, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v559 = v707;
      }

      v563 = v557 - 1;
      if (!v563)
      {
        goto LABEL_911;
      }

      if (v173)
      {
        v564 = 0;
        v565 = 2 * v558;
        do
        {
          for (i = 0; i != v173; ++i)
          {
            v703 = v559[i];
            (*(*v172 + 96))(v172, &v703);
          }

          v559 = (v559 + v565);
          ++v564;
        }

        while (v564 != v563);
LABEL_911:
        if (v173)
        {
          v567 = 2 * v173;
          do
          {
            v703 = *v559;
            (*(*v172 + 96))(v172, &v703);
            ++v559;
            v567 -= 2;
          }

          while (v567);
        }
      }

      break;
    case 4:
      v704 = &unk_285182020;
      sub_23F12BBC8(a3, &v705);
      v106 = *a2;
      v107 = v708;
      v108 = v705;
      if (!v705)
      {
        goto LABEL_679;
      }

      v109 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }

        v108 = v705;
        v110 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v111 = v108;
            (v110->__on_zero_shared)(v110);
            std::__shared_weak_count::__release_weak(v110);
            v108 = v111;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v108 + 96))(&v718);
      }

      else
      {
LABEL_679:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v428 = v709;
      if (!v709)
      {
        break;
      }

      v429 = v711;
      v430 = v707;
      if (v712 == 1 && v707)
      {
        v431 = v705;
        v432 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v432->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v433 = v431;
            (v432->__on_zero_shared)(v432);
            std::__shared_weak_count::__release_weak(v432);
            v431 = v433;
          }
        }

        (*(*v431 + 88))(v431, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v430 = v707;
      }

      v434 = v428 - 1;
      if (v428 == 1)
      {
        goto LABEL_694;
      }

      if (v107)
      {
        v435 = 0;
        do
        {
          v436 = 4 * v107;
          v437 = v430;
          do
          {
            (*(*v106 + 128))(v106, v437);
            v437 += 2;
            v436 -= 4;
          }

          while (v436);
          v430 += 2 * v429;
          ++v435;
        }

        while (v435 != v434);
LABEL_694:
        if (v107)
        {
          v438 = 4 * v107;
          do
          {
            (*(*v106 + 128))(v106, v430);
            v430 += 2;
            v438 -= 4;
          }

          while (v438);
        }
      }

      break;
    case 5:
      v704 = &unk_285182118;
      sub_23F12C2A4(a3, &v705);
      v154 = *a2;
      v155 = v715;
      v156 = v705;
      if (!v705)
      {
        goto LABEL_837;
      }

      v157 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v705;
        v158 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v156 + 96))(&v718);
      }

      else
      {
LABEL_837:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v522 = v710;
      if (!v710)
      {
        break;
      }

      v523 = v714;
      v524 = v707;
      if (v716 == 1 && v707)
      {
        v525 = v705;
        v526 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v526->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v527 = v525;
            (v526->__on_zero_shared)(v526);
            std::__shared_weak_count::__release_weak(v526);
            v525 = v527;
          }
        }

        (*(*v525 + 88))(v525, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v524 = v707;
      }

      v528 = (2 * v155);
      v529 = v522 - 1;
      if (!v529)
      {
        goto LABEL_853;
      }

      if (v528)
      {
        for (j = 0; j != v529; ++j)
        {
          v531 = v528;
          v532 = v524;
          do
          {
            (*(*v154 + 80))(v154, v532);
            v532 = (v532 + 1);
            --v531;
          }

          while (v531);
          v524 = (v524 + v523);
        }

LABEL_853:
        if (v528)
        {
          do
          {
            (*(*v154 + 80))(v154, v524);
            v524 = (v524 + 1);
            --v528;
          }

          while (v528);
        }
      }

      break;
    case 6:
      v704 = &unk_285182210;
      sub_23F12CA10(a3, &v705);
      v100 = *a2;
      v101 = v715;
      v102 = v705;
      if (!v705)
      {
        goto LABEL_659;
      }

      v103 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v103->__on_zero_shared)(v103);
          std::__shared_weak_count::__release_weak(v103);
        }

        v102 = v705;
        v104 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v105 = v102;
            (v104->__on_zero_shared)(v104);
            std::__shared_weak_count::__release_weak(v104);
            v102 = v105;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v102 + 96))(&v718);
      }

      else
      {
LABEL_659:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v416 = v710;
      if (!v710)
      {
        break;
      }

      v417 = v714;
      v418 = v707;
      if (v716 == 1 && v707)
      {
        v419 = v705;
        v420 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v420->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v421 = v419;
            (v420->__on_zero_shared)(v420);
            std::__shared_weak_count::__release_weak(v420);
            v419 = v421;
          }
        }

        (*(*v419 + 88))(v419, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v418 = v707;
      }

      v422 = (2 * v101);
      v423 = v416 - 1;
      if (!v423)
      {
        goto LABEL_675;
      }

      if (v422)
      {
        for (k = 0; k != v423; ++k)
        {
          v425 = 2 * v422;
          v426 = v418;
          do
          {
            (*(*v100 + 96))(v100, v426++);
            v425 -= 2;
          }

          while (v425);
          v418 += v417;
        }

LABEL_675:
        if (v422)
        {
          v427 = 2 * v422;
          do
          {
            (*(*v100 + 96))(v100, v418++);
            v427 -= 2;
          }

          while (v427);
        }
      }

      break;
    case 7:
      v704 = &unk_285182308;
      sub_23F12D180(a3, &v705);
      v70 = *a2;
      v71 = v715;
      v72 = v705;
      if (!v705)
      {
        goto LABEL_559;
      }

      v73 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v705;
        v74 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v72 + 96))(&v718);
      }

      else
      {
LABEL_559:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v357 = v710;
      if (!v710)
      {
        break;
      }

      v358 = v714;
      v359 = v707;
      if (v716 == 1 && v707)
      {
        v360 = v705;
        v361 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v361->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v362 = v360;
            (v361->__on_zero_shared)(v361);
            std::__shared_weak_count::__release_weak(v361);
            v360 = v362;
          }
        }

        (*(*v360 + 88))(v360, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v359 = v707;
      }

      v363 = (2 * v71);
      v364 = v357 - 1;
      if (!v364)
      {
        goto LABEL_575;
      }

      if (v363)
      {
        v365 = 0;
        v366 = 2 * v358;
        do
        {
          v367 = 0;
          do
          {
            v703 = v359[v367];
            (*(*v70 + 96))(v70, &v703);
            ++v367;
          }

          while (v363 != v367);
          v359 = (v359 + v366);
          ++v365;
        }

        while (v365 != v364);
LABEL_575:
        if (v363)
        {
          v368 = 2 * v363;
          do
          {
            v703 = *v359;
            (*(*v70 + 96))(v70, &v703);
            ++v359;
            v368 -= 2;
          }

          while (v368);
        }
      }

      break;
    case 8:
      v704 = &unk_285182400;
      sub_23F12D8F0(a3, &v705);
      v166 = *a2;
      v167 = v715;
      v168 = v705;
      if (!v705)
      {
        goto LABEL_876;
      }

      v169 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v705;
        v170 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v168 + 96))(&v718);
      }

      else
      {
LABEL_876:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v545 = v710;
      if (!v710)
      {
        break;
      }

      v546 = v714;
      v547 = v707;
      if (v716 == 1 && v707)
      {
        v548 = v705;
        v549 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v549->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v550 = v548;
            (v549->__on_zero_shared)(v549);
            std::__shared_weak_count::__release_weak(v549);
            v548 = v550;
          }
        }

        (*(*v548 + 88))(v548, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v547 = v707;
      }

      v551 = (2 * v167);
      v552 = v545 - 1;
      if (!v552)
      {
        goto LABEL_892;
      }

      if (v551)
      {
        for (m = 0; m != v552; ++m)
        {
          v554 = 4 * v551;
          v555 = v547;
          do
          {
            (*(*v166 + 128))(v166, v555);
            v555 += 2;
            v554 -= 4;
          }

          while (v554);
          v547 += 2 * v546;
        }

LABEL_892:
        if (v551)
        {
          v556 = 4 * v551;
          do
          {
            (*(*v166 + 128))(v166, v547);
            v547 += 2;
            v556 -= 4;
          }

          while (v556);
        }
      }

      break;
    case 9:
      v704 = &unk_2851824F8;
      sub_23F12E060(a3, &v705);
      v148 = *a2;
      v149 = v715;
      v150 = v705;
      if (!v705)
      {
        goto LABEL_818;
      }

      v151 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v705;
        v152 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v150 + 96))(&v718);
      }

      else
      {
LABEL_818:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v511 = v710;
      if (!v710)
      {
        break;
      }

      v512 = v714;
      v513 = v707;
      if (v716 == 1 && v707)
      {
        v514 = v705;
        v515 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v515->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v516 = v514;
            (v515->__on_zero_shared)(v515);
            std::__shared_weak_count::__release_weak(v515);
            v514 = v516;
          }
        }

        (*(*v514 + 88))(v514, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v513 = v707;
      }

      v517 = (3 * v149);
      v518 = v511 - 1;
      if (v511 == 1)
      {
        goto LABEL_834;
      }

      if (v149)
      {
        v519 = 0;
        do
        {
          v520 = (3 * v149);
          v521 = v513;
          do
          {
            (*(*v148 + 80))(v148, v521);
            v521 = (v521 + 1);
            --v520;
          }

          while (v520);
          v513 = (v513 + v512);
          ++v519;
        }

        while (v519 != v518);
LABEL_834:
        if (v149)
        {
          do
          {
            (*(*v148 + 80))(v148, v513);
            v513 = (v513 + 1);
            --v517;
          }

          while (v517);
        }
      }

      break;
    case 10:
      v704 = &unk_2851825F0;
      sub_23F12E7CC(a3, &v705);
      v196 = *a2;
      v197 = v715;
      v198 = v705;
      if (!v705)
      {
        goto LABEL_991;
      }

      v199 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v199->__on_zero_shared)(v199);
          std::__shared_weak_count::__release_weak(v199);
        }

        v198 = v705;
        v200 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v198;
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
            v198 = v201;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v198 + 96))(&v718);
      }

      else
      {
LABEL_991:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v611 = v710;
      if (!v710)
      {
        break;
      }

      v612 = v714;
      v613 = v707;
      if (v716 == 1 && v707)
      {
        v614 = v705;
        v615 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v615->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v616 = v614;
            (v615->__on_zero_shared)(v615);
            std::__shared_weak_count::__release_weak(v615);
            v614 = v616;
          }
        }

        (*(*v614 + 88))(v614, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v613 = v707;
      }

      v617 = v611 - 1;
      if (v611 == 1)
      {
        goto LABEL_1007;
      }

      if (v197)
      {
        v618 = 0;
        do
        {
          v619 = 2 * (3 * v197);
          v620 = v613;
          do
          {
            (*(*v196 + 96))(v196, v620++);
            v619 -= 2;
          }

          while (v619);
          v613 += v612;
          ++v618;
        }

        while (v618 != v617);
LABEL_1007:
        if (v197)
        {
          v621 = 2 * (3 * v197);
          do
          {
            (*(*v196 + 96))(v196, v613++);
            v621 -= 2;
          }

          while (v621);
        }
      }

      break;
    case 11:
      v704 = &unk_2851826E8;
      sub_23F12EF3C(a3, &v705);
      v190 = *a2;
      v191 = v715;
      v192 = v705;
      if (!v705)
      {
        goto LABEL_971;
      }

      v193 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v705;
        v194 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v192 + 96))(&v718);
      }

      else
      {
LABEL_971:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v600 = v710;
      if (!v710)
      {
        break;
      }

      v601 = v714;
      v602 = v707;
      if (v716 == 1 && v707)
      {
        v603 = v705;
        v604 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v604->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v605 = v603;
            (v604->__on_zero_shared)(v604);
            std::__shared_weak_count::__release_weak(v604);
            v603 = v605;
          }
        }

        (*(*v603 + 88))(v603, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v602 = v707;
      }

      v606 = v600 - 1;
      if (!v606)
      {
        goto LABEL_987;
      }

      if (v191)
      {
        v607 = 0;
        v608 = 2 * v601;
        do
        {
          v609 = 0;
          do
          {
            v703 = v602[v609];
            (*(*v190 + 96))(v190, &v703);
            ++v609;
          }

          while (3 * v191 != v609);
          v602 = (v602 + v608);
          ++v607;
        }

        while (v607 != v606);
LABEL_987:
        if (v191)
        {
          v610 = 2 * (3 * v191);
          do
          {
            v703 = *v602;
            (*(*v190 + 96))(v190, &v703);
            ++v602;
            v610 -= 2;
          }

          while (v610);
        }
      }

      break;
    case 12:
      v704 = &unk_2851827E0;
      sub_23F12F6AC(a3, &v705);
      v28 = *a2;
      v29 = v715;
      v30 = v705;
      if (!v705)
      {
        goto LABEL_421;
      }

      v31 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v705;
        v32 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v30 + 96))(&v718);
      }

      else
      {
LABEL_421:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v278 = v710;
      if (!v710)
      {
        break;
      }

      v279 = v714;
      v280 = v707;
      if (v716 == 1 && v707)
      {
        v281 = v705;
        v282 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v282->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v283 = v281;
            (v282->__on_zero_shared)(v282);
            std::__shared_weak_count::__release_weak(v282);
            v281 = v283;
          }
        }

        (*(*v281 + 88))(v281, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v280 = v707;
      }

      v284 = v278 - 1;
      if (v278 == 1)
      {
        goto LABEL_437;
      }

      if (v29)
      {
        v285 = 0;
        do
        {
          v286 = 4 * (3 * v29);
          v287 = v280;
          do
          {
            (*(*v28 + 128))(v28, v287);
            v287 += 2;
            v286 -= 4;
          }

          while (v286);
          v280 += 2 * v279;
          ++v285;
        }

        while (v285 != v284);
LABEL_437:
        if (v29)
        {
          v288 = 4 * (3 * v29);
          do
          {
            (*(*v28 + 128))(v28, v280);
            v280 += 2;
            v288 -= 4;
          }

          while (v288);
        }
      }

      break;
    case 13:
      v704 = &unk_2851828D8;
      sub_23F12FE1C(a3, &v705);
      v52 = *a2;
      v53 = v715;
      v54 = v705;
      if (!v705)
      {
        goto LABEL_500;
      }

      v55 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v705;
        v56 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v54 + 96))(&v718);
      }

      else
      {
LABEL_500:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v323 = v710;
      if (!v710)
      {
        break;
      }

      v324 = v714;
      v325 = v707;
      if (v716 == 1 && v707)
      {
        v326 = v705;
        v327 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v327->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v328 = v326;
            (v327->__on_zero_shared)(v327);
            std::__shared_weak_count::__release_weak(v327);
            v326 = v328;
          }
        }

        (*(*v326 + 88))(v326, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v325 = v707;
      }

      v329 = (4 * v53);
      v330 = v323 - 1;
      if (!v330)
      {
        goto LABEL_516;
      }

      if (v329)
      {
        for (n = 0; n != v330; ++n)
        {
          v332 = v329;
          v333 = v325;
          do
          {
            (*(*v52 + 80))(v52, v333);
            v333 = (v333 + 1);
            --v332;
          }

          while (v332);
          v325 = (v325 + v324);
        }

LABEL_516:
        if (v329)
        {
          do
          {
            (*(*v52 + 80))(v52, v325);
            v325 = (v325 + 1);
            --v329;
          }

          while (v329);
        }
      }

      break;
    case 14:
      v704 = &unk_2851829D0;
      sub_23F130588(a3, &v705);
      v46 = *a2;
      v47 = v715;
      v48 = v705;
      if (!v705)
      {
        goto LABEL_480;
      }

      v49 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v705;
        v50 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v48 + 96))(&v718);
      }

      else
      {
LABEL_480:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v311 = v710;
      if (!v710)
      {
        break;
      }

      v312 = v714;
      v313 = v707;
      if (v716 == 1 && v707)
      {
        v314 = v705;
        v315 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v315->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v316 = v314;
            (v315->__on_zero_shared)(v315);
            std::__shared_weak_count::__release_weak(v315);
            v314 = v316;
          }
        }

        (*(*v314 + 88))(v314, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v313 = v707;
      }

      v317 = (4 * v47);
      v318 = v311 - 1;
      if (!v318)
      {
        goto LABEL_496;
      }

      if (v317)
      {
        for (ii = 0; ii != v318; ++ii)
        {
          v320 = 2 * v317;
          v321 = v313;
          do
          {
            (*(*v46 + 96))(v46, v321++);
            v320 -= 2;
          }

          while (v320);
          v313 += v312;
        }

LABEL_496:
        if (v317)
        {
          v322 = 2 * v317;
          do
          {
            (*(*v46 + 96))(v46, v313++);
            v322 -= 2;
          }

          while (v322);
        }
      }

      break;
    case 15:
      v704 = &unk_285182AC8;
      sub_23F130CF8(a3, &v705);
      v220 = *a2;
      v221 = v715;
      v222 = v705;
      if (!v705)
      {
        goto LABEL_1070;
      }

      v223 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v223->__on_zero_shared)(v223);
          std::__shared_weak_count::__release_weak(v223);
        }

        v222 = v705;
        v224 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v222;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v222 = v225;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v222 + 96))(&v718);
      }

      else
      {
LABEL_1070:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v656 = v710;
      if (!v710)
      {
        break;
      }

      v657 = v714;
      v658 = v707;
      if (v716 == 1 && v707)
      {
        v659 = v705;
        v660 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v660->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v661 = v659;
            (v660->__on_zero_shared)(v660);
            std::__shared_weak_count::__release_weak(v660);
            v659 = v661;
          }
        }

        (*(*v659 + 88))(v659, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v658 = v707;
      }

      v662 = (4 * v221);
      v663 = v656 - 1;
      if (!v663)
      {
        goto LABEL_1086;
      }

      if (v662)
      {
        v664 = 0;
        v665 = 2 * v657;
        do
        {
          v666 = 0;
          do
          {
            v703 = v658[v666];
            (*(*v220 + 96))(v220, &v703);
            ++v666;
          }

          while (v662 != v666);
          v658 = (v658 + v665);
          ++v664;
        }

        while (v664 != v663);
LABEL_1086:
        if (v662)
        {
          v667 = 2 * v662;
          do
          {
            v703 = *v658;
            (*(*v220 + 96))(v220, &v703);
            ++v658;
            v667 -= 2;
          }

          while (v667);
        }
      }

      break;
    case 16:
      v704 = &unk_285182BC0;
      sub_23F131468(a3, &v705);
      v160 = *a2;
      v161 = v715;
      v162 = v705;
      if (!v705)
      {
        goto LABEL_856;
      }

      v163 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v705;
        v164 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v162 + 96))(&v718);
      }

      else
      {
LABEL_856:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v533 = v710;
      if (!v710)
      {
        break;
      }

      v534 = v714;
      v535 = v707;
      if (v716 == 1 && v707)
      {
        v536 = v705;
        v537 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v535 = v707;
      }

      v539 = (4 * v161);
      v540 = v533 - 1;
      if (!v540)
      {
        goto LABEL_872;
      }

      if (v539)
      {
        for (jj = 0; jj != v540; ++jj)
        {
          v542 = 4 * v539;
          v543 = v535;
          do
          {
            (*(*v160 + 128))(v160, v543);
            v543 += 2;
            v542 -= 4;
          }

          while (v542);
          v535 += 2 * v534;
        }

LABEL_872:
        if (v539)
        {
          v544 = 4 * v539;
          do
          {
            (*(*v160 + 128))(v160, v535);
            v535 += 2;
            v544 -= 4;
          }

          while (v544);
        }
      }

      break;
    case 17:
      v704 = &unk_285182CB8;
      sub_23F131BD8(a3, &v705);
      v226 = *a2;
      v227 = v715;
      v228 = v705;
      if (!v705)
      {
        goto LABEL_1090;
      }

      v229 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v229->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v229->__on_zero_shared)(v229);
          std::__shared_weak_count::__release_weak(v229);
        }

        v228 = v705;
        v230 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v231 = v228;
            (v230->__on_zero_shared)(v230);
            std::__shared_weak_count::__release_weak(v230);
            v228 = v231;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v228 + 96))(&v718);
      }

      else
      {
LABEL_1090:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v668 = v710;
      if (!v710)
      {
        break;
      }

      v669 = v714;
      v670 = v707;
      if (v716 == 1 && v707)
      {
        v671 = v705;
        v672 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v672->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v673 = v671;
            (v672->__on_zero_shared)(v672);
            std::__shared_weak_count::__release_weak(v672);
            v671 = v673;
          }
        }

        (*(*v671 + 88))(v671, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v670 = v707;
      }

      v674 = (3 * v227);
      v675 = v668 - 1;
      if (v668 == 1)
      {
        goto LABEL_1106;
      }

      if (v227)
      {
        v676 = 0;
        do
        {
          v677 = (3 * v227);
          v678 = v670;
          do
          {
            (*(*v226 + 80))(v226, v678);
            v678 = (v678 + 1);
            --v677;
          }

          while (v677);
          v670 = (v670 + v669);
          ++v676;
        }

        while (v676 != v675);
LABEL_1106:
        if (v227)
        {
          do
          {
            (*(*v226 + 80))(v226, v670);
            v670 = (v670 + 1);
            --v674;
          }

          while (v674);
        }
      }

      break;
    case 18:
      v704 = &unk_285182DB0;
      sub_23F132344(a3, &v705);
      v64 = *a2;
      v65 = v715;
      v66 = v705;
      if (!v705)
      {
        goto LABEL_539;
      }

      v67 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        v66 = v705;
        v68 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v66;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v66 = v69;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v66 + 96))(&v718);
      }

      else
      {
LABEL_539:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v346 = v710;
      if (!v710)
      {
        break;
      }

      v347 = v714;
      v348 = v707;
      if (v716 == 1 && v707)
      {
        v349 = v705;
        v350 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v350->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v351 = v349;
            (v350->__on_zero_shared)(v350);
            std::__shared_weak_count::__release_weak(v350);
            v349 = v351;
          }
        }

        (*(*v349 + 88))(v349, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v348 = v707;
      }

      v352 = v346 - 1;
      if (v346 == 1)
      {
        goto LABEL_555;
      }

      if (v65)
      {
        v353 = 0;
        do
        {
          v354 = 2 * (3 * v65);
          v355 = v348;
          do
          {
            (*(*v64 + 96))(v64, v355++);
            v354 -= 2;
          }

          while (v354);
          v348 += v347;
          ++v353;
        }

        while (v353 != v352);
LABEL_555:
        if (v65)
        {
          v356 = 2 * (3 * v65);
          do
          {
            (*(*v64 + 96))(v64, v348++);
            v356 -= 2;
          }

          while (v356);
        }
      }

      break;
    case 19:
      v704 = &unk_285182EA8;
      sub_23F132AB4(a3, &v705);
      v16 = *a2;
      v17 = v715;
      v18 = v705;
      if (!v705)
      {
        goto LABEL_382;
      }

      v19 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v705;
        v20 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v18 + 96))(&v718);
      }

      else
      {
LABEL_382:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v256 = v710;
      if (!v710)
      {
        break;
      }

      v257 = v714;
      v258 = v707;
      if (v716 == 1 && v707)
      {
        v259 = v705;
        v260 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v260->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v261 = v259;
            (v260->__on_zero_shared)(v260);
            std::__shared_weak_count::__release_weak(v260);
            v259 = v261;
          }
        }

        (*(*v259 + 88))(v259, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v258 = v707;
      }

      v262 = v256 - 1;
      if (!v262)
      {
        goto LABEL_398;
      }

      if (v17)
      {
        v263 = 0;
        v264 = 2 * v257;
        do
        {
          v265 = 0;
          do
          {
            v703 = v258[v265];
            (*(*v16 + 96))(v16, &v703);
            ++v265;
          }

          while (3 * v17 != v265);
          v258 = (v258 + v264);
          ++v263;
        }

        while (v263 != v262);
LABEL_398:
        if (v17)
        {
          v266 = 2 * (3 * v17);
          do
          {
            v703 = *v258;
            (*(*v16 + 96))(v16, &v703);
            ++v258;
            v266 -= 2;
          }

          while (v266);
        }
      }

      break;
    case 20:
      v704 = &unk_285182FA0;
      sub_23F133224(a3, &v705);
      v208 = *a2;
      v209 = v715;
      v210 = v705;
      if (!v705)
      {
        goto LABEL_1030;
      }

      v211 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v211->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v211->__on_zero_shared)(v211);
          std::__shared_weak_count::__release_weak(v211);
        }

        v210 = v705;
        v212 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v210;
            (v212->__on_zero_shared)(v212);
            std::__shared_weak_count::__release_weak(v212);
            v210 = v213;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v210 + 96))(&v718);
      }

      else
      {
LABEL_1030:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v633 = v710;
      if (!v710)
      {
        break;
      }

      v634 = v714;
      v635 = v707;
      if (v716 == 1 && v707)
      {
        v636 = v705;
        v637 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v637->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v638 = v636;
            (v637->__on_zero_shared)(v637);
            std::__shared_weak_count::__release_weak(v637);
            v636 = v638;
          }
        }

        (*(*v636 + 88))(v636, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v635 = v707;
      }

      v639 = v633 - 1;
      if (v633 == 1)
      {
        goto LABEL_1046;
      }

      if (v209)
      {
        v640 = 0;
        do
        {
          v641 = 4 * (3 * v209);
          v642 = v635;
          do
          {
            (*(*v208 + 128))(v208, v642);
            v642 += 2;
            v641 -= 4;
          }

          while (v641);
          v635 += 2 * v634;
          ++v640;
        }

        while (v640 != v639);
LABEL_1046:
        if (v209)
        {
          v643 = 4 * (3 * v209);
          do
          {
            (*(*v208 + 128))(v208, v635);
            v635 += 2;
            v643 -= 4;
          }

          while (v643);
        }
      }

      break;
    case 21:
      v704 = &unk_28517E0A8;
      sub_23F08E4D4(a3, &v705);
      v238 = *a2;
      v239 = v715;
      v240 = v705;
      if (!v705)
      {
        goto LABEL_1129;
      }

      v241 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v241->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v241->__on_zero_shared)(v241);
          std::__shared_weak_count::__release_weak(v241);
        }

        v240 = v705;
        v242 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v242->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v240;
            (v242->__on_zero_shared)(v242);
            std::__shared_weak_count::__release_weak(v242);
            v240 = v243;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v240 + 96))(&v718);
      }

      else
      {
LABEL_1129:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v690 = v710;
      if (!v710)
      {
        break;
      }

      v691 = v714;
      v692 = v707;
      if (v716 == 1 && v707)
      {
        v693 = v705;
        v694 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v694->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v695 = v693;
            (v694->__on_zero_shared)(v694);
            std::__shared_weak_count::__release_weak(v694);
            v693 = v695;
          }
        }

        (*(*v693 + 88))(v693, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v692 = v707;
      }

      v696 = (3 * v239);
      v697 = v690 - 1;
      if (v690 == 1)
      {
        goto LABEL_1145;
      }

      if (v239)
      {
        v698 = 0;
        do
        {
          v699 = (3 * v239);
          v700 = v692;
          do
          {
            (*(*v238 + 80))(v238, v700);
            v700 = (v700 + 1);
            --v699;
          }

          while (v699);
          v692 = (v692 + v691);
          ++v698;
        }

        while (v698 != v697);
LABEL_1145:
        if (v239)
        {
          do
          {
            (*(*v238 + 80))(v238, v692);
            v692 = (v692 + 1);
            --v696;
          }

          while (v696);
        }
      }

      break;
    case 22:
      v704 = &unk_285183098;
      sub_23F133994(a3, &v705);
      v82 = *a2;
      v83 = v715;
      v84 = v705;
      if (!v705)
      {
        goto LABEL_599;
      }

      v85 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v705;
        v86 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v84 + 96))(&v718);
      }

      else
      {
LABEL_599:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v381 = v710;
      if (!v710)
      {
        break;
      }

      v382 = v714;
      v383 = v707;
      if (v716 == 1 && v707)
      {
        v384 = v705;
        v385 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v385->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v386 = v384;
            (v385->__on_zero_shared)(v385);
            std::__shared_weak_count::__release_weak(v385);
            v384 = v386;
          }
        }

        (*(*v384 + 88))(v384, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v383 = v707;
      }

      v387 = v381 - 1;
      if (v381 == 1)
      {
        goto LABEL_615;
      }

      if (v83)
      {
        v388 = 0;
        do
        {
          v389 = 2 * (3 * v83);
          v390 = v383;
          do
          {
            (*(*v82 + 96))(v82, v390++);
            v389 -= 2;
          }

          while (v389);
          v383 += v382;
          ++v388;
        }

        while (v388 != v387);
LABEL_615:
        if (v83)
        {
          v391 = 2 * (3 * v83);
          do
          {
            (*(*v82 + 96))(v82, v383++);
            v391 -= 2;
          }

          while (v391);
        }
      }

      break;
    case 23:
      v704 = &unk_285183190;
      sub_23F134104(a3, &v705);
      v232 = *a2;
      v233 = v715;
      v234 = v705;
      if (!v705)
      {
        goto LABEL_1109;
      }

      v235 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v235->__on_zero_shared)(v235);
          std::__shared_weak_count::__release_weak(v235);
        }

        v234 = v705;
        v236 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v236->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v237 = v234;
            (v236->__on_zero_shared)(v236);
            std::__shared_weak_count::__release_weak(v236);
            v234 = v237;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v234 + 96))(&v718);
      }

      else
      {
LABEL_1109:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v679 = v710;
      if (!v710)
      {
        break;
      }

      v680 = v714;
      v681 = v707;
      if (v716 == 1 && v707)
      {
        v682 = v705;
        v683 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v683->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v684 = v682;
            (v683->__on_zero_shared)(v683);
            std::__shared_weak_count::__release_weak(v683);
            v682 = v684;
          }
        }

        (*(*v682 + 88))(v682, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v681 = v707;
      }

      v685 = v679 - 1;
      if (!v685)
      {
        goto LABEL_1125;
      }

      if (v233)
      {
        v686 = 0;
        v687 = 2 * v680;
        do
        {
          v688 = 0;
          do
          {
            v703 = v681[v688];
            (*(*v232 + 96))(v232, &v703);
            ++v688;
          }

          while (3 * v233 != v688);
          v681 = (v681 + v687);
          ++v686;
        }

        while (v686 != v685);
LABEL_1125:
        if (v233)
        {
          v689 = 2 * (3 * v233);
          do
          {
            v703 = *v681;
            (*(*v232 + 96))(v232, &v703);
            ++v681;
            v689 -= 2;
          }

          while (v689);
        }
      }

      break;
    case 24:
      v704 = &unk_285183288;
      sub_23F134874(a3, &v705);
      v40 = *a2;
      v41 = v715;
      v42 = v705;
      if (!v705)
      {
        goto LABEL_460;
      }

      v43 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v705;
        v44 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v42 + 96))(&v718);
      }

      else
      {
LABEL_460:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v300 = v710;
      if (!v710)
      {
        break;
      }

      v301 = v714;
      v302 = v707;
      if (v716 == 1 && v707)
      {
        v303 = v705;
        v304 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v304->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v305 = v303;
            (v304->__on_zero_shared)(v304);
            std::__shared_weak_count::__release_weak(v304);
            v303 = v305;
          }
        }

        (*(*v303 + 88))(v303, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v707;
      }

      v306 = v300 - 1;
      if (v300 == 1)
      {
        goto LABEL_476;
      }

      if (v41)
      {
        v307 = 0;
        do
        {
          v308 = 4 * (3 * v41);
          v309 = v302;
          do
          {
            (*(*v40 + 128))(v40, v309);
            v309 += 2;
            v308 -= 4;
          }

          while (v308);
          v302 += 2 * v301;
          ++v307;
        }

        while (v307 != v306);
LABEL_476:
        if (v41)
        {
          v310 = 4 * (3 * v41);
          do
          {
            (*(*v40 + 128))(v40, v302);
            v302 += 2;
            v310 -= 4;
          }

          while (v310);
        }
      }

      break;
    case 25:
      v704 = &unk_285183380;
      sub_23F134FE4(a3, &v705);
      v22 = *a2;
      v23 = v715;
      v24 = v705;
      if (!v705)
      {
        goto LABEL_402;
      }

      v25 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v705;
        v26 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v24 + 96))(&v718);
      }

      else
      {
LABEL_402:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v267 = v710;
      if (!v710)
      {
        break;
      }

      v268 = v714;
      v269 = v707;
      if (v716 == 1 && v707)
      {
        v270 = v705;
        v271 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v272 = v270;
            (v271->__on_zero_shared)(v271);
            std::__shared_weak_count::__release_weak(v271);
            v270 = v272;
          }
        }

        (*(*v270 + 88))(v270, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v269 = v707;
      }

      v273 = (4 * v23);
      v274 = v267 - 1;
      if (!v274)
      {
        goto LABEL_418;
      }

      if (v273)
      {
        for (kk = 0; kk != v274; ++kk)
        {
          v276 = v273;
          v277 = v269;
          do
          {
            (*(*v22 + 80))(v22, v277);
            v277 = (v277 + 1);
            --v276;
          }

          while (v276);
          v269 = (v269 + v268);
        }

LABEL_418:
        if (v273)
        {
          do
          {
            (*(*v22 + 80))(v22, v269);
            v269 = (v269 + 1);
            --v273;
          }

          while (v273);
        }
      }

      break;
    case 26:
      v704 = &unk_285183478;
      sub_23F135750(a3, &v705);
      v88 = *a2;
      v89 = v715;
      v90 = v705;
      if (!v705)
      {
        goto LABEL_619;
      }

      v91 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v705;
        v92 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v90 + 96))(&v718);
      }

      else
      {
LABEL_619:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v392 = v710;
      if (!v710)
      {
        break;
      }

      v393 = v714;
      v394 = v707;
      if (v716 == 1 && v707)
      {
        v395 = v705;
        v396 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v396->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v397 = v395;
            (v396->__on_zero_shared)(v396);
            std::__shared_weak_count::__release_weak(v396);
            v395 = v397;
          }
        }

        (*(*v395 + 88))(v395, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v394 = v707;
      }

      v398 = (4 * v89);
      v399 = v392 - 1;
      if (!v399)
      {
        goto LABEL_635;
      }

      if (v398)
      {
        for (mm = 0; mm != v399; ++mm)
        {
          v401 = 2 * v398;
          v402 = v394;
          do
          {
            (*(*v88 + 96))(v88, v402++);
            v401 -= 2;
          }

          while (v401);
          v394 += v393;
        }

LABEL_635:
        if (v398)
        {
          v403 = 2 * v398;
          do
          {
            (*(*v88 + 96))(v88, v394++);
            v403 -= 2;
          }

          while (v403);
        }
      }

      break;
    case 27:
      v704 = &unk_285183570;
      sub_23F135EC0(a3, &v705);
      v10 = *a2;
      v11 = v715;
      v12 = v705;
      if (!v705)
      {
        goto LABEL_362;
      }

      v13 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v705;
        v14 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v12 + 96))(&v718);
      }

      else
      {
LABEL_362:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v244 = v710;
      if (!v710)
      {
        break;
      }

      v245 = v714;
      v246 = v707;
      if (v716 == 1 && v707)
      {
        v247 = v705;
        v248 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v248->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v249 = v247;
            (v248->__on_zero_shared)(v248);
            std::__shared_weak_count::__release_weak(v248);
            v247 = v249;
          }
        }

        (*(*v247 + 88))(v247, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v246 = v707;
      }

      v250 = (4 * v11);
      v251 = v244 - 1;
      if (!v251)
      {
        goto LABEL_378;
      }

      if (v250)
      {
        v252 = 0;
        v253 = 2 * v245;
        do
        {
          v254 = 0;
          do
          {
            v703 = v246[v254];
            (*(*v10 + 96))(v10, &v703);
            ++v254;
          }

          while (v250 != v254);
          v246 = (v246 + v253);
          ++v252;
        }

        while (v252 != v251);
LABEL_378:
        if (v250)
        {
          v255 = 2 * v250;
          do
          {
            v703 = *v246;
            (*(*v10 + 96))(v10, &v703);
            ++v246;
            v255 -= 2;
          }

          while (v255);
        }
      }

      break;
    case 28:
      v704 = &unk_285183668;
      sub_23F136630(a3, &v705);
      v112 = *a2;
      v113 = v715;
      v114 = v705;
      if (!v705)
      {
        goto LABEL_698;
      }

      v115 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v705;
        v116 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v114 + 96))(&v718);
      }

      else
      {
LABEL_698:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v439 = v710;
      if (!v710)
      {
        break;
      }

      v440 = v714;
      v441 = v707;
      if (v716 == 1 && v707)
      {
        v442 = v705;
        v443 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v443->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v444 = v442;
            (v443->__on_zero_shared)(v443);
            std::__shared_weak_count::__release_weak(v443);
            v442 = v444;
          }
        }

        (*(*v442 + 88))(v442, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v441 = v707;
      }

      v445 = (4 * v113);
      v446 = v439 - 1;
      if (!v446)
      {
        goto LABEL_714;
      }

      if (v445)
      {
        for (nn = 0; nn != v446; ++nn)
        {
          v448 = 4 * v445;
          v449 = v441;
          do
          {
            (*(*v112 + 128))(v112, v449);
            v449 += 2;
            v448 -= 4;
          }

          while (v448);
          v441 += 2 * v440;
        }

LABEL_714:
        if (v445)
        {
          v450 = 4 * v445;
          do
          {
            (*(*v112 + 128))(v112, v441);
            v441 += 2;
            v450 -= 4;
          }

          while (v450);
        }
      }

      break;
    case 29:
      v704 = &unk_285183760;
      sub_23F136DA0(a3, &v705);
      v34 = *a2;
      v35 = v715;
      v36 = v705;
      if (!v705)
      {
        goto LABEL_441;
      }

      v37 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v705;
        v38 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v36 + 96))(&v718);
      }

      else
      {
LABEL_441:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v289 = v710;
      if (!v710)
      {
        break;
      }

      v290 = v714;
      v291 = v707;
      if (v716 == 1 && v707)
      {
        v292 = v705;
        v293 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v293->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v294 = v292;
            (v293->__on_zero_shared)(v293);
            std::__shared_weak_count::__release_weak(v293);
            v292 = v294;
          }
        }

        (*(*v292 + 88))(v292, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v291 = v707;
      }

      v295 = (4 * v35);
      v296 = v289 - 1;
      if (!v296)
      {
        goto LABEL_457;
      }

      if (v295)
      {
        for (i1 = 0; i1 != v296; ++i1)
        {
          v298 = v295;
          v299 = v291;
          do
          {
            (*(*v34 + 80))(v34, v299);
            v299 = (v299 + 1);
            --v298;
          }

          while (v298);
          v291 = (v291 + v290);
        }

LABEL_457:
        if (v295)
        {
          do
          {
            (*(*v34 + 80))(v34, v291);
            v291 = (v291 + 1);
            --v295;
          }

          while (v295);
        }
      }

      break;
    case 30:
      v704 = &unk_285183858;
      sub_23F13750C(a3, &v705);
      v130 = *a2;
      v131 = v715;
      v132 = v705;
      if (!v705)
      {
        goto LABEL_758;
      }

      v133 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v705;
        v134 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v132 + 96))(&v718);
      }

      else
      {
LABEL_758:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v475 = v710;
      if (!v710)
      {
        break;
      }

      v476 = v714;
      v477 = v707;
      if (v716 == 1 && v707)
      {
        v478 = v705;
        v479 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v479->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v480 = v478;
            (v479->__on_zero_shared)(v479);
            std::__shared_weak_count::__release_weak(v479);
            v478 = v480;
          }
        }

        (*(*v478 + 88))(v478, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v477 = v707;
      }

      v481 = (4 * v131);
      v482 = v475 - 1;
      if (!v482)
      {
        goto LABEL_774;
      }

      if (v481)
      {
        for (i2 = 0; i2 != v482; ++i2)
        {
          v484 = 2 * v481;
          v485 = v477;
          do
          {
            (*(*v130 + 96))(v130, v485++);
            v484 -= 2;
          }

          while (v484);
          v477 += v476;
        }

LABEL_774:
        if (v481)
        {
          v486 = 2 * v481;
          do
          {
            (*(*v130 + 96))(v130, v477++);
            v486 -= 2;
          }

          while (v486);
        }
      }

      break;
    case 31:
      v704 = &unk_285183950;
      sub_23F137C7C(a3, &v705);
      v94 = *a2;
      v95 = v715;
      v96 = v705;
      if (!v705)
      {
        goto LABEL_639;
      }

      v97 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v705;
        v98 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v96 + 96))(&v718);
      }

      else
      {
LABEL_639:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v404 = v710;
      if (!v710)
      {
        break;
      }

      v405 = v714;
      v406 = v707;
      if (v716 == 1 && v707)
      {
        v407 = v705;
        v408 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v408->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v409 = v407;
            (v408->__on_zero_shared)(v408);
            std::__shared_weak_count::__release_weak(v408);
            v407 = v409;
          }
        }

        (*(*v407 + 88))(v407, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v406 = v707;
      }

      v410 = (4 * v95);
      v411 = v404 - 1;
      if (!v411)
      {
        goto LABEL_655;
      }

      if (v410)
      {
        v412 = 0;
        v413 = 2 * v405;
        do
        {
          v414 = 0;
          do
          {
            v703 = v406[v414];
            (*(*v94 + 96))(v94, &v703);
            ++v414;
          }

          while (v410 != v414);
          v406 = (v406 + v413);
          ++v412;
        }

        while (v412 != v411);
LABEL_655:
        if (v410)
        {
          v415 = 2 * v410;
          do
          {
            v703 = *v406;
            (*(*v94 + 96))(v94, &v703);
            ++v406;
            v415 -= 2;
          }

          while (v415);
        }
      }

      break;
    case 32:
      v704 = &unk_285183A48;
      sub_23F1383EC(a3, &v705);
      v142 = *a2;
      v143 = v715;
      v144 = v705;
      if (!v705)
      {
        goto LABEL_798;
      }

      v145 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v705;
        v146 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v144 + 96))(&v718);
      }

      else
      {
LABEL_798:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v499 = v710;
      if (!v710)
      {
        break;
      }

      v500 = v714;
      v501 = v707;
      if (v716 == 1 && v707)
      {
        v502 = v705;
        v503 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v503->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v504 = v502;
            (v503->__on_zero_shared)(v503);
            std::__shared_weak_count::__release_weak(v503);
            v502 = v504;
          }
        }

        (*(*v502 + 88))(v502, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v501 = v707;
      }

      v505 = (4 * v143);
      v506 = v499 - 1;
      if (!v506)
      {
        goto LABEL_814;
      }

      if (v505)
      {
        for (i3 = 0; i3 != v506; ++i3)
        {
          v508 = 4 * v505;
          v509 = v501;
          do
          {
            (*(*v142 + 128))(v142, v509);
            v509 += 2;
            v508 -= 4;
          }

          while (v508);
          v501 += 2 * v500;
        }

LABEL_814:
        if (v505)
        {
          v510 = 4 * v505;
          do
          {
            (*(*v142 + 128))(v142, v501);
            v501 += 2;
            v510 -= 4;
          }

          while (v510);
        }
      }

      break;
    case 33:
      v704 = &unk_285183B40;
      sub_23F138B5C(a3, &v705);
      v202 = *a2;
      v203 = v715;
      v204 = v705;
      if (!v705)
      {
        goto LABEL_1011;
      }

      v205 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v205->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v205->__on_zero_shared)(v205);
          std::__shared_weak_count::__release_weak(v205);
        }

        v204 = v705;
        v206 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v207 = v204;
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
            v204 = v207;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v204 + 96))(&v718);
      }

      else
      {
LABEL_1011:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v622 = v710;
      if (!v710)
      {
        break;
      }

      v623 = v714;
      v624 = v707;
      if (v716 == 1 && v707)
      {
        v625 = v705;
        v626 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v626->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v627 = v625;
            (v626->__on_zero_shared)(v626);
            std::__shared_weak_count::__release_weak(v626);
            v625 = v627;
          }
        }

        (*(*v625 + 88))(v625, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v624 = v707;
      }

      v628 = (4 * v203);
      v629 = v622 - 1;
      if (!v629)
      {
        goto LABEL_1027;
      }

      if (v628)
      {
        for (i4 = 0; i4 != v629; ++i4)
        {
          v631 = v628;
          v632 = v624;
          do
          {
            (*(*v202 + 80))(v202, v632);
            v632 = (v632 + 1);
            --v631;
          }

          while (v631);
          v624 = (v624 + v623);
        }

LABEL_1027:
        if (v628)
        {
          do
          {
            (*(*v202 + 80))(v202, v624);
            v624 = (v624 + 1);
            --v628;
          }

          while (v628);
        }
      }

      break;
    case 34:
      v704 = &unk_285183C38;
      sub_23F1392C8(a3, &v705);
      v136 = *a2;
      v137 = v715;
      v138 = v705;
      if (!v705)
      {
        goto LABEL_778;
      }

      v139 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v705;
        v140 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v138 + 96))(&v718);
      }

      else
      {
LABEL_778:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v487 = v710;
      if (!v710)
      {
        break;
      }

      v488 = v714;
      v489 = v707;
      if (v716 == 1 && v707)
      {
        v490 = v705;
        v491 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v491->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v492 = v490;
            (v491->__on_zero_shared)(v491);
            std::__shared_weak_count::__release_weak(v491);
            v490 = v492;
          }
        }

        (*(*v490 + 88))(v490, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v489 = v707;
      }

      v493 = (4 * v137);
      v494 = v487 - 1;
      if (!v494)
      {
        goto LABEL_794;
      }

      if (v493)
      {
        for (i5 = 0; i5 != v494; ++i5)
        {
          v496 = 2 * v493;
          v497 = v489;
          do
          {
            (*(*v136 + 96))(v136, v497++);
            v496 -= 2;
          }

          while (v496);
          v489 += v488;
        }

LABEL_794:
        if (v493)
        {
          v498 = 2 * v493;
          do
          {
            (*(*v136 + 96))(v136, v489++);
            v498 -= 2;
          }

          while (v498);
        }
      }

      break;
    case 35:
      v704 = &unk_285183D30;
      sub_23F139A38(a3, &v705);
      v124 = *a2;
      v125 = v715;
      v126 = v705;
      if (!v705)
      {
        goto LABEL_738;
      }

      v127 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v705;
        v128 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v126 + 96))(&v718);
      }

      else
      {
LABEL_738:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v463 = v710;
      if (!v710)
      {
        break;
      }

      v464 = v714;
      v465 = v707;
      if (v716 == 1 && v707)
      {
        v466 = v705;
        v467 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v467->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v468 = v466;
            (v467->__on_zero_shared)(v467);
            std::__shared_weak_count::__release_weak(v467);
            v466 = v468;
          }
        }

        (*(*v466 + 88))(v466, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v465 = v707;
      }

      v469 = (4 * v125);
      v470 = v463 - 1;
      if (!v470)
      {
        goto LABEL_754;
      }

      if (v469)
      {
        v471 = 0;
        v472 = 2 * v464;
        do
        {
          v473 = 0;
          do
          {
            v703 = v465[v473];
            (*(*v124 + 96))(v124, &v703);
            ++v473;
          }

          while (v469 != v473);
          v465 = (v465 + v472);
          ++v471;
        }

        while (v471 != v470);
LABEL_754:
        if (v469)
        {
          v474 = 2 * v469;
          do
          {
            v703 = *v465;
            (*(*v124 + 96))(v124, &v703);
            ++v465;
            v474 -= 2;
          }

          while (v474);
        }
      }

      break;
    case 36:
      v704 = &unk_285183E28;
      sub_23F13A1A8(a3, &v705);
      v118 = *a2;
      v119 = v715;
      v120 = v705;
      if (!v705)
      {
        goto LABEL_718;
      }

      v121 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v705;
        v122 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v120 + 96))(&v718);
      }

      else
      {
LABEL_718:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v451 = v710;
      if (!v710)
      {
        break;
      }

      v452 = v714;
      v453 = v707;
      if (v716 == 1 && v707)
      {
        v454 = v705;
        v455 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v455->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v456 = v454;
            (v455->__on_zero_shared)(v455);
            std::__shared_weak_count::__release_weak(v455);
            v454 = v456;
          }
        }

        (*(*v454 + 88))(v454, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v453 = v707;
      }

      v457 = (4 * v119);
      v458 = v451 - 1;
      if (!v458)
      {
        goto LABEL_734;
      }

      if (v457)
      {
        for (i6 = 0; i6 != v458; ++i6)
        {
          v460 = 4 * v457;
          v461 = v453;
          do
          {
            (*(*v118 + 128))(v118, v461);
            v461 += 2;
            v460 -= 4;
          }

          while (v460);
          v453 += 2 * v452;
        }

LABEL_734:
        if (v457)
        {
          v462 = 4 * v457;
          do
          {
            (*(*v118 + 128))(v118, v453);
            v453 += 2;
            v462 -= 4;
          }

          while (v462);
        }
      }

      break;
    case 37:
      v704 = &unk_285183F20;
      sub_23F13A918(a3, &v705);
      v184 = *a2;
      v185 = v715;
      v186 = v705;
      if (!v705)
      {
        goto LABEL_952;
      }

      v187 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v705;
        v188 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v186 + 96))(&v718);
      }

      else
      {
LABEL_952:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v589 = v710;
      if (!v710)
      {
        break;
      }

      v590 = v714;
      v591 = v707;
      if (v716 == 1 && v707)
      {
        v592 = v705;
        v593 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v593->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v594 = v592;
            (v593->__on_zero_shared)(v593);
            std::__shared_weak_count::__release_weak(v593);
            v592 = v594;
          }
        }

        (*(*v592 + 88))(v592, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v591 = v707;
      }

      v595 = (4 * v185);
      v596 = v589 - 1;
      if (!v596)
      {
        goto LABEL_968;
      }

      if (v595)
      {
        for (i7 = 0; i7 != v596; ++i7)
        {
          v598 = v595;
          v599 = v591;
          do
          {
            (*(*v184 + 80))(v184, v599);
            v599 = (v599 + 1);
            --v598;
          }

          while (v598);
          v591 = (v591 + v590);
        }

LABEL_968:
        if (v595)
        {
          do
          {
            (*(*v184 + 80))(v184, v591);
            v591 = (v591 + 1);
            --v595;
          }

          while (v595);
        }
      }

      break;
    case 38:
      v704 = &unk_285184018;
      sub_23F13B084(a3, &v705);
      v214 = *a2;
      v215 = v715;
      v216 = v705;
      if (!v705)
      {
        goto LABEL_1050;
      }

      v217 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v705;
        v218 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v216 + 96))(&v718);
      }

      else
      {
LABEL_1050:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v644 = v710;
      if (!v710)
      {
        break;
      }

      v645 = v714;
      v646 = v707;
      if (v716 == 1 && v707)
      {
        v647 = v705;
        v648 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v648->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v649 = v647;
            (v648->__on_zero_shared)(v648);
            std::__shared_weak_count::__release_weak(v648);
            v647 = v649;
          }
        }

        (*(*v647 + 88))(v647, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v646 = v707;
      }

      v650 = (4 * v215);
      v651 = v644 - 1;
      if (!v651)
      {
        goto LABEL_1066;
      }

      if (v650)
      {
        for (i8 = 0; i8 != v651; ++i8)
        {
          v653 = 2 * v650;
          v654 = v646;
          do
          {
            (*(*v214 + 96))(v214, v654++);
            v653 -= 2;
          }

          while (v653);
          v646 += v645;
        }

LABEL_1066:
        if (v650)
        {
          v655 = 2 * v650;
          do
          {
            (*(*v214 + 96))(v214, v646++);
            v655 -= 2;
          }

          while (v655);
        }
      }

      break;
    case 39:
      v704 = &unk_285184110;
      sub_23F13B7F4(a3, &v705);
      v76 = *a2;
      v77 = v715;
      v78 = v705;
      if (!v705)
      {
        goto LABEL_579;
      }

      v79 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v705;
        v80 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v78 + 96))(&v718);
      }

      else
      {
LABEL_579:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v369 = v710;
      if (!v710)
      {
        break;
      }

      v370 = v714;
      v371 = v707;
      if (v716 == 1 && v707)
      {
        v372 = v705;
        v373 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v373->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v374 = v372;
            (v373->__on_zero_shared)(v373);
            std::__shared_weak_count::__release_weak(v373);
            v372 = v374;
          }
        }

        (*(*v372 + 88))(v372, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v371 = v707;
      }

      v375 = (4 * v77);
      v376 = v369 - 1;
      if (!v376)
      {
        goto LABEL_595;
      }

      if (v375)
      {
        v377 = 0;
        v378 = 2 * v370;
        do
        {
          v379 = 0;
          do
          {
            v703 = v371[v379];
            (*(*v76 + 96))(v76, &v703);
            ++v379;
          }

          while (v375 != v379);
          v371 = (v371 + v378);
          ++v377;
        }

        while (v377 != v376);
LABEL_595:
        if (v375)
        {
          v380 = 2 * v375;
          do
          {
            v703 = *v371;
            (*(*v76 + 96))(v76, &v703);
            ++v371;
            v380 -= 2;
          }

          while (v380);
        }
      }

      break;
    case 40:
      v704 = &unk_285184208;
      sub_23F13BF64(a3, &v705);
      v58 = *a2;
      v59 = v715;
      v60 = v705;
      if (!v705)
      {
        goto LABEL_519;
      }

      v61 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }

        v60 = v705;
        v62 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v63 = v60;
            (v62->__on_zero_shared)(v62);
            std::__shared_weak_count::__release_weak(v62);
            v60 = v63;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v60 + 96))(&v718);
      }

      else
      {
LABEL_519:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v334 = v710;
      if (!v710)
      {
        break;
      }

      v335 = v714;
      v336 = v707;
      if (v716 == 1 && v707)
      {
        v337 = v705;
        v338 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v338->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v339 = v337;
            (v338->__on_zero_shared)(v338);
            std::__shared_weak_count::__release_weak(v338);
            v337 = v339;
          }
        }

        (*(*v337 + 88))(v337, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v336 = v707;
      }

      v340 = (4 * v59);
      v341 = v334 - 1;
      if (!v341)
      {
        goto LABEL_535;
      }

      if (v340)
      {
        for (i9 = 0; i9 != v341; ++i9)
        {
          v343 = 4 * v340;
          v344 = v336;
          do
          {
            (*(*v58 + 128))(v58, v344);
            v344 += 2;
            v343 -= 4;
          }

          while (v343);
          v336 += 2 * v335;
        }

LABEL_535:
        if (v340)
        {
          v345 = 4 * v340;
          do
          {
            (*(*v58 + 128))(v58, v336);
            v336 += 2;
            v345 -= 4;
          }

          while (v345);
        }
      }

      break;
    default:
      return;
  }

  v701 = v718;
  v718 = 0;
  if (v701)
  {
    (*(*v701 + 8))(v701);
  }

  v702 = v706;
  if (v706)
  {
    if (!atomic_fetch_add(&v706->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v702->__on_zero_shared)(v702);
      std::__shared_weak_count::__release_weak(v702);
    }
  }
}

void sub_23F19ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;
  a20 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_23F08B948(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_23F19BC68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    if (v4 == a1)
    {
      v10 = v9;
      (*(*v4 + 24))(v4, v9);
    }

    else
    {
      v10 = (*(*v4 + 16))(v4);
    }

    a2 = v6;
    a3 = v5;
  }

  else
  {
    v10 = 0;
  }

  sub_23F07BD58(v9, a2, 5, a3);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F19BDC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF61BF8(va);
  _Unwind_Resume(a1);
}

void sub_23F19BDD8(uint64_t a1, int a2)
{
  v6 = a2;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
        sub_23F19C3D4(&v5, DeviceGray);
      }

      sub_23F19C0A4();
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    sub_23F19C3D4(&v5, DeviceRGB);
  }

  DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
  sub_23F19C3D4(&v5, DeviceCMYK);
}

void sub_23F19BF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F19BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F19BF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F19BF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F19BF80(int a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_23F19C3D4(&v4, cf);
}

void sub_23F19C340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x245CACD00](v2, 0x10B2C40EED050F3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F19C36C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F19C388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_23F04B948(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23F19C378);
}

void sub_23F19C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = a18;
  a18 = 0;
  if (v19)
  {
    sub_23F302A54(&a18, v19);
    sub_23F04B948(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23F19C378);
}

void sub_23F19C5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F19C658(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F19C690(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F19C6B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F19C940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F19C9C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F19C9F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F19CA1C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F19CA7C(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/DataProviderRef.cpp", 44, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_13:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_14:
      v8 = CGDataProviderCopyData(*a1);
      sub_23F2CB358(&v9, v8);
    }
  }

  else
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, &unk_23F3091D6, 0);
  }

  while (v4 != v5);
  if (byte_27E3961A0)
  {
    goto LABEL_13;
  }

LABEL_15:
  abort();
}

uint64_t sub_23F19CC78(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
    result = 0;
  }

  else
  {
    std::istream::tellg();
    std::istream::seekg();
    if (a3 < 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = &unk_28518DEE8;
      __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
    }

    std::istream::read();
    result = a1[1];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F19CD74(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
    a2 = 0;
  }

  else
  {
    std::istream::tellg();
    std::istream::seekg();
    if ((*(a1 + *(*a1 - 24) + 32) & 2) == 0)
    {
      std::istream::tellg();
      a2 = v6 - v7;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_23F19CE50(void *a1)
{
  std::istream::seekg();
  v2 = (a1 + *(*a1 - 24));

  std::ios_base::clear(v2, 0);
}

void sub_23F19CEA8(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 200, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v5 = qword_27E396178, v6 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_13:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_14:
      DataProvider = CGImageGetDataProvider(*a2);
      v10 = DataProvider;
      if (DataProvider)
      {
        CFRetain(DataProvider);
      }

      sub_23F07D870(&v11, v10);
    }
  }

  else
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_17;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "IsValid()", 9, &unk_23F3091D6, 0);
  }

  while (v5 != v6);
  if (byte_27E3961A0)
  {
    goto LABEL_13;
  }

LABEL_17:
  abort();
}

unint64_t sub_23F19D0B4(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_4:
      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 224, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_13:
          qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
          goto LABEL_14;
        }
      }

      else
      {
        v4 = qword_27E396178;
        v5 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_41;
        }
      }

      do
      {
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "IsValid()", 9, &unk_23F3091D6, 0);
      }

      while (v4 != v5);
      if ((byte_27E3961A0 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }
  }

  else if (!v3)
  {
    goto LABEL_4;
  }

LABEL_14:
  v9 = *a1;
  v8 = *(a1 + 8);
  if (v8 && (atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (!v9)
    {
LABEL_17:
      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 170, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v10 = qword_27E396178, v11 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_26:
          qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
          goto LABEL_27;
        }
      }

      else
      {
        v10 = qword_27E396178;
        v11 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_41;
        }
      }

      do
      {
        v13 = *v10;
        v12 = *(v10 + 8);
        v10 += 16;
        v13(v12, "IsValid()", 9, &unk_23F3091D6, 0);
      }

      while (v10 != v11);
      if ((byte_27E3961A0 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }
  }

  else if (!v9)
  {
    goto LABEL_17;
  }

LABEL_27:
  Width = CGImageGetWidth(*a1);
  v16 = *a1;
  v15 = *(a1 + 8);
  if (v15 && (atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else if (!v16)
  {
LABEL_30:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 175, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v17 = qword_27E396178, v18 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_39:
        qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
        return Width | (CGImageGetHeight(*a1) << 32);
      }
    }

    else
    {
      v17 = qword_27E396178;
      v18 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_41;
      }
    }

    do
    {
      v20 = *v17;
      v19 = *(v17 + 8);
      v17 += 16;
      v20(v19, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v17 != v18);
    if (byte_27E3961A0)
    {
      goto LABEL_39;
    }

LABEL_41:
    abort();
  }

  return Width | (CGImageGetHeight(*a1) << 32);
}

void sub_23F19D4CC(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 180, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_13:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_14:
      CGImageGetBitsPerComponent(*a1);
      v8 = *a1;
      v9 = *(a1 + 8);
      if (v9 && (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else if (v8)
      {
        goto LABEL_27;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 195, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v10 = qword_27E396178, v11 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_26:
          qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_27:
          ColorSpace = CGImageGetColorSpace(*a1);
          v13 = ColorSpace;
          if (ColorSpace)
          {
            CFRetain(ColorSpace);
          }

          sub_23F19C3D4(&v14, v13);
        }
      }

      else
      {
        v10 = qword_27E396178;
        v11 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_30;
        }
      }

      do
      {
        (*v10)(*(v10 + 8), "IsValid()", 9, &unk_23F3091D6, 0);
        v10 += 16;
      }

      while (v10 != v11);
      if (byte_27E3961A0)
      {
        goto LABEL_26;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, &unk_23F3091D6, 0);
  }

  while (v4 != v5);
  if ((byte_27E3961A0 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_13;
}

void sub_23F19ED3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_23EF3AE8C(&a16);
  sub_23EF3291C(&a18);
  _Unwind_Resume(a1);
}

void sub_23F19EEB0(uint64_t a1, CFIndex a2)
{
  v15 = &unk_285179588;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 52);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 52);
  }

  v7 = *(a1 + 24);
  v16 = v2;
  v17 = v3;
  v18 = v7;
  v19 = *(a1 + 32);
  v20 = v4;
  v21 = v5;
  v22 = v6;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v8 = v20;
    if (v22 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = v20;
    if (v22 != 1)
    {
      goto LABEL_12;
    }
  }

  if (v8)
  {
    v9 = v16;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v9 = v16;
      }
    }

    (*(*v9 + 88))(v9, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
    v8 = v20;
  }

LABEL_12:
  switch(v21)
  {
    case 0:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 26:
    case 27:
    case 28:
    case 34:
    case 35:
    case 36:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      v23 = &unk_28517DD38;
      sub_23F08C868(&v15, &v24);
      a2 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_55;
      }

      v10 = (v27 - 1) * v29 + (v26 - 1) * v28;
      goto LABEL_48;
    case 2:
      v23 = &unk_28517DFB0;
      sub_23F08DA84(&v15, &v24);
      goto LABEL_30;
    case 3:
      v23 = &unk_285181F28;
      sub_23F12B4EC(&v15, &v24);
LABEL_30:
      a2 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_55;
      }

      v12 = (v27 - 1) * v29 + (v26 - 1) * v28;
      goto LABEL_42;
    case 4:
      v23 = &unk_285182020;
      sub_23F12BBC8(&v15, &v24);
      a2 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_55;
      }

      v11 = (v27 - 1) * v29 + (v26 - 1) * v28;
      goto LABEL_54;
    case 21:
      v23 = &unk_28517E0A8;
      sub_23F08E4D4(&v15, &v24);
      goto LABEL_44;
    case 22:
      v23 = &unk_285183098;
      sub_23F133994(&v15, &v24);
      goto LABEL_38;
    case 23:
      v23 = &unk_285183190;
      sub_23F134104(&v15, &v24);
      goto LABEL_38;
    case 24:
      v23 = &unk_285183288;
      sub_23F134874(&v15, &v24);
      goto LABEL_50;
    case 25:
      v23 = &unk_285183380;
      sub_23F134FE4(&v15, &v24);
      goto LABEL_44;
    case 29:
      v23 = &unk_285183760;
      sub_23F136DA0(&v15, &v24);
      goto LABEL_44;
    case 30:
      v23 = &unk_285183858;
      sub_23F13750C(&v15, &v24);
      goto LABEL_38;
    case 31:
      v23 = &unk_285183950;
      sub_23F137C7C(&v15, &v24);
      goto LABEL_38;
    case 32:
      v23 = &unk_285183A48;
      sub_23F1383EC(&v15, &v24);
      goto LABEL_50;
    case 33:
      v23 = &unk_285183B40;
      sub_23F138B5C(&v15, &v24);
      goto LABEL_44;
    case 37:
      v23 = &unk_285183F20;
      sub_23F13A918(&v15, &v24);
LABEL_44:
      a2 = 0;
      if (v26 && v27 && v28)
      {
        v10 = (v27 - 1) * v30 + (v26 - 1) * v29 + v31 * (v28 - 1);
LABEL_48:
        a2 = (v10 + 1);
      }

      goto LABEL_55;
    case 38:
      v23 = &unk_285184018;
      sub_23F13B084(&v15, &v24);
      goto LABEL_38;
    case 39:
      v23 = &unk_285184110;
      sub_23F13B7F4(&v15, &v24);
LABEL_38:
      a2 = 0;
      if (v26 && v27 && v28)
      {
        v12 = (v27 - 1) * v30 + (v26 - 1) * v29 + v31 * (v28 - 1);
LABEL_42:
        a2 = 2 * (v12 + 1);
      }

      goto LABEL_55;
    case 40:
      v23 = &unk_285184208;
      sub_23F13BF64(&v15, &v24);
LABEL_50:
      a2 = 0;
      if (v26 && v27 && v28)
      {
        v11 = (v27 - 1) * v30 + (v26 - 1) * v29 + v31 * (v28 - 1);
LABEL_54:
        a2 = 4 * (v11 + 1);
      }

LABEL_55:
      v13 = v25;
      if (v25)
      {
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = a2;
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          a2 = v14;
        }
      }

      break;
    default:
      break;
  }

  sub_23F2CBEA8(v8, a2);
}

void sub_23F19FE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_23EF3AE8C(v18);
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(&a18);
  _Unwind_Resume(a1);
}

void sub_23F1B3394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  sub_23EF50F44(&a36);
  sub_23F08FF34(&a46);
  sub_23EF3AE8C(&a34);
  sub_23EF3AE8C(&a22);
  sub_23F1BBD8C(v51 - 160);
  sub_23F08FF34(&a24);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F1B5690()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "Cannot copy CGImage of format ";
  v2[2] = v0;
  v2[3] = "Cannot copy CGImage of format ";
  v2[4] = "Cannot copy CGImage of format ";
  v3 = v2;
  sub_23F084C60(&v3);
  sub_23F07F300();
}

void sub_23F1B57C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F1B57D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F1B57EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F1B5800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F1B5814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F1B5828(uint64_t a1, int a2, uint64_t *a3)
{
  switch(a2)
  {
    case 1:
      sub_23F07D744(&provider, *a3);
    case 2:
      sub_23F07D744(&provider, *a3);
    case 3:
      sub_23F07D744(&provider, *a3);
    case 4:
      sub_23F07D744(&provider, *a3);
    case 5:
      sub_23F07D744(&space, *a3);
    case 6:
      sub_23F07D744(&space, *a3);
    case 7:
      sub_23F07D744(&space, *a3);
    case 8:
      sub_23F07D744(&space, *a3);
    case 9:
      sub_23F07D744(&space, *a3);
    case 10:
      sub_23F07D744(&space, *a3);
    case 11:
      sub_23F07D744(&space, *a3);
    case 12:
      sub_23F07D744(&space, *a3);
    case 13:
      sub_23F07D744(&space, *a3);
    case 14:
      sub_23F07D744(&space, *a3);
    case 15:
      sub_23F07D744(&space, *a3);
    case 16:
      sub_23F07D744(&space, *a3);
    case 17:
      sub_23F07D744(&space, *a3);
    case 18:
      sub_23F07D744(&space, *a3);
    case 19:
      sub_23F07D744(&space, *a3);
    case 20:
      sub_23F07D744(&space, *a3);
    case 21:
      sub_23F07D744(&provider, *a3);
    case 22:
      sub_23F07D744(&provider, *a3);
    case 23:
      sub_23F07D744(&provider, *a3);
    case 24:
      sub_23F07D744(&provider, *a3);
    case 25:
      sub_23F07D744(&provider, *a3);
    case 26:
      sub_23F07D744(&space, *a3);
    case 27:
      sub_23F07D744(&space, *a3);
    case 28:
      sub_23F07D744(&space, *a3);
    case 29:
      sub_23F07D744(&provider, *a3);
    case 30:
      sub_23F07D744(&provider, *a3);
    case 31:
      sub_23F07D744(&provider, *a3);
    case 32:
      sub_23F07D744(&provider, *a3);
    case 33:
      sub_23F07D744(&provider, *a3);
    case 34:
      sub_23F07D744(&space, *a3);
    case 35:
      sub_23F07D744(&space, *a3);
    case 36:
      sub_23F07D744(&space, *a3);
    case 37:
      sub_23F07D744(&provider, *a3);
    case 38:
      sub_23F07D744(&provider, *a3);
    case 39:
      sub_23F07D744(&provider, *a3);
    case 40:
      sub_23F07D744(&provider, *a3);
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}

void sub_23F1B8184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    if (!atomic_fetch_add(&a16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a16->__on_zero_shared)(a16);
      std::__shared_weak_count::__release_weak(a16);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1B822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(va2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B82A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B82BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B82D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B82E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B82F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B830C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B835C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B83AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B83C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B83D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B83E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8530(int a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_23F07D404(&v4, cf);
}

void sub_23F1B8654(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v2 < v1)
  {
    operator new();
  }

  v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
  if (v3 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v1 - *a1) >> 3);
    v5 = 2 * v4;
    if (2 * v4 <= v3 + 1)
    {
      v5 = v3 + 1;
    }

    if (v4 >= 0x555555555555555)
    {
      v6 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      if (v6 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v7 = 8 * ((v2 - *a1) >> 3);
    operator new();
  }

  sub_23EF3AE74();
}

void sub_23F1B8814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F1B8830(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v2 < v1)
  {
    operator new();
  }

  v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
  if (v3 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v1 - *a1) >> 3);
    v5 = 2 * v4;
    if (2 * v4 <= v3 + 1)
    {
      v5 = v3 + 1;
    }

    if (v4 >= 0x555555555555555)
    {
      v6 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      if (v6 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v7 = 8 * ((v2 - *a1) >> 3);
    operator new();
  }

  sub_23EF3AE74();
}

void sub_23F1B89F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F1B8A0C(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F1B8BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F1B8BBC(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F1B8D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F1B8D6C(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F1B8F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

size_t sub_23F1B8F1C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285184428[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

_BYTE *sub_23F1B9020(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F1B8BBC(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23F1B9120(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285184428[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F1B9214(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_285184428[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F1B93D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F1B9430(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F1B9830(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23F1B9530(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285184428[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F1B9624(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_285184428[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F1B97E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F1B9830(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F1B99CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

size_t sub_23F1B99E0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285184428[v3])(&v7, v1);
  }

  *(v1 + 24) = -1;
  v4 = *v2;
  result = strlen(*v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v4, result);
  }

  *(v1 + v6) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F1B9AD8(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = **(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_285184428[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F1B9CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1B9CF8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v14 = (8 * (&v5[-*a2] >> 3));
    v21 = v14;
    v22 = v14;
    v15 = *v3;
    v16 = strlen(*v3);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v14[23] = v16;
    if (v16)
    {
      memmove(v14, v15, v16);
    }

    v14[v17] = 0;
    v13 = v14 + 24;
    v18 = *(a2 + 8) - *a2;
    v19 = &v14[-v18];
    memcpy(&v21[-v18], *a2, v18);
    v20 = *a2;
    *a2 = v19;
    *(a2 + 8) = v22 + 24;
    *(a2 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *v3;
    v7 = strlen(v6);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v5[23] = v7;
    if (v7)
    {
      memmove(v5, v6, v7);
    }

    v5[v8] = 0;
    v13 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v13;
}

void sub_23F1B9F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1B9F5C(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v4 = *a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a3;
  if (v4)
  {
    v5 = 0;
  }

  HIDWORD(v13) = v5;
  LODWORD(v13) = 4;
  v6 = v13;
  LODWORD(v13) = 1;
  HIDWORD(v13) = a4;
  *result = a2;
  *(result + 8) = v6;
  *(result + 16) = HIDWORD(v5);
  *(result + 20) = v13;
  *(result + 28) = HIDWORD(a4);
  *(result + 32) = v5;
  *(result + 40) = a4;
  if (HIDWORD(v5) * HIDWORD(a4) == -1)
  {
    v7 = result;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v8 = qword_27E396178, v9 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_14:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        result = v7;
        goto LABEL_15;
      }
    }

    else
    {
      v8 = qword_27E396178;
      v9 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v9);
    if (byte_27E3961A0)
    {
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F1BA124(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BA1B0(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
{
  *a1 = &unk_28517DD38;
  v6 = *a3;
  if (*a3)
  {
    v7 = a3[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a3;
  }

  if (HIDWORD(v9) * HIDWORD(v8) != -1)
  {
    goto LABEL_19;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v10 = qword_27E396178;
    v11 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (byte_27E3961A8 == 1)
  {
    v10 = qword_27E396178;
    v11 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_16:
        (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 += 16;
      }

      while (v10 != v11);
      if (byte_27E3961A0)
      {
        goto LABEL_18;
      }

LABEL_23:
      abort();
    }
  }

LABEL_18:
  qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_19:
  if (v6)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v8;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  return a1;
}

void *sub_23F1BA380(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v5;
      result = v4;
    }

    v2 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = result;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        result = v8;
        if (*(v9 + 49) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *result = 0;
        return result;
      }
    }
  }

  if (*(a2 + 49) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  return v7(v2, 1);
}

uint64_t sub_23F1BA540(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2851844E0;
  a2[1] = v2;
  return result;
}

void sub_23F1BA56C(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28517D9A8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BA7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_23F1BA858(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BA954(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184570;
  a2[1] = v2;
  return result;
}

void sub_23F1BA980(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28517DAA0;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BABF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_23F1BAC6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BAD68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184600;
  a2[1] = v2;
  return result;
}

void sub_23F1BAD94(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181170;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BB008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1BB080(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1BB3E4(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_23F1BB394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_23F1BB3E4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394858))
  {
    sub_23F0A8BCC();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394840, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1BB4FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BB5F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184690;
  a2[1] = v2;
  return result;
}

void sub_23F1BB624(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181268;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BB898(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1BB910(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 4)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1BBC74(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_23F1BBC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_23F1BBC74(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394878))
  {
    sub_23F0A967C();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394860, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1BBD8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BBE18(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28517E0A8;
  v6 = *a3 == 0;
  if (*a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!a3[1])
  {
    v6 = 1;
  }

  v8 = !v6;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a4 << 32;
  }

  v10 = v9 | v7;
  v11 = *a3;
  if (!v8)
  {
    v11 = 0;
  }

  *(&v20 + 4) = v11;
  v12 = v11;
  LODWORD(v20) = 3;
  v13 = v20;
  v14 = HIDWORD(v11);
  LODWORD(v21) = 1;
  HIDWORD(v21) = v9 | v7;
  v15 = HIDWORD(v9);
  if (HIDWORD(v11) * HIDWORD(v9) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_19:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_20;
      }
    }

    else
    {
      v16 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_27E3961A0)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 44) = v21;
  *(a1 + 52) = v15;
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1BC04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1BC060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void *sub_23F1BC074(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v5;
      result = v4;
    }

    v2 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = result;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        result = v8;
        if (*(v9 + 73) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *result = 0;
        return result;
      }
    }
  }

  if (*(a2 + 73) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  return v7(v2, 1);
}

uint64_t sub_23F1BC234(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184720;
  a2[1] = v2;
  return result;
}

void sub_23F1BC260(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28517DB98;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BC4E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_23F1BC55C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BC5E8(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285183098;
  v6 = *a3 == 0;
  if (*a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!a3[1])
  {
    v6 = 1;
  }

  v8 = !v6;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a4 << 32;
  }

  v10 = v9 | v7;
  v11 = *a3;
  if (!v8)
  {
    v11 = 0;
  }

  *(&v20 + 4) = v11;
  v12 = v11;
  LODWORD(v20) = 3;
  v13 = v20;
  v14 = HIDWORD(v11);
  LODWORD(v21) = 1;
  HIDWORD(v21) = v9 | v7;
  v15 = HIDWORD(v9);
  if (HIDWORD(v11) * HIDWORD(v9) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_19:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_20;
      }
    }

    else
    {
      v16 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_27E3961A0)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 44) = v21;
  *(a1 + 52) = v15;
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1BC81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1BC830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1BC8B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2851847B0;
  a2[1] = v2;
  return result;
}

void sub_23F1BC8E0(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_285181648;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BCB64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1BCBDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 22)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1BCFD4(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F1BCF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1BCFD4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394A98))
  {
    sub_23F0B4B14();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394A80, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

uint64_t sub_23F1BD0EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23F1BD178(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285183190;
  v6 = *a3 == 0;
  if (*a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!a3[1])
  {
    v6 = 1;
  }

  v8 = !v6;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a4 << 32;
  }

  v10 = v9 | v7;
  v11 = *a3;
  if (!v8)
  {
    v11 = 0;
  }

  *(&v20 + 4) = v11;
  v12 = v11;
  LODWORD(v20) = 3;
  v13 = v20;
  v14 = HIDWORD(v11);
  LODWORD(v21) = 1;
  HIDWORD(v21) = v9 | v7;
  v15 = HIDWORD(v9);
  if (HIDWORD(v11) * HIDWORD(v9) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v16 = qword_27E396178, v17 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_19:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_20;
      }
    }

    else
    {
      v16 = qword_27E396178;
      v17 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_27E3961A0)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 44) = v21;
  *(a1 + 52) = v15;
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F1BD3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F1BD3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1BD444(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285184840;
  a2[1] = v2;
  return result;
}

void sub_23F1BD470(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v6 = qword_27E396178, v7 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_10:
        qword_27E396190(*algn_27E396198, "size == image.Size()", 20, &unk_23F3091D6, 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28517FCD0;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_23F1BD6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23F1BD76C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 23)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1BDB64(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}